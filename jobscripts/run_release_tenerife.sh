#!/bin/bash
#SBATCH --job-name=sea_urchin_tenerife_dispersal_weekly
#SBATCH --ntasks=52
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=100G
#SBATCH --time=05:00:00
#SBATCH --partition=cluster

# make sure we have Singularity
module load singularity/3.5.2

# to get the image (need to be on a partition which has internet access --> data), run
# $ singularity pull --disable-cache --dir "${PWD}" docker://quay.io/willirath/parcels-container:2022.07.14-801fbe4

# make sure the output exists
mkdir -p notebooks_executed

#changed paraameters


RNG_seed=12345
for year in 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016; do
    for week in {1..52}; do
        srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
                ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
                && papermill --cwd notebooks \
                notebooks/release_larvae_tenerife.ipynb \
                notebooks_executed/exec_release_larvae_1stweekly_${year}_w${week}.ipynb \
                -p RNG_seed ${RNG_seed} \
                -p start_year ${year} \
                -p start_week ${week} \
                -k python" &

        sleep 2

    done
done
# wait till background task is done
wait

# print resource infos
jobinfo
