#!/bin/bash
#SBATCH --job-name=sea_urchin_tenerife_brazil_release_longterm
#SBATCH --ntasks=40
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=100G
#SBATCH --time=08:00:00
#SBATCH --partition=cluster

# make sure we have Singularity
module load singularity/3.5.2

# to get the image (need to be on a partition which has internet access --> data), run
# $ singularity pull --disable-cache --dir "${PWD}" docker://quay.io/willirath/parcels-container:2022.07.14-801fbe4

# make sure the output exists
mkdir -p notebooks_executed

#changed parameters

RNG_seed=12345
runtime=1460
number_particles=40000

for year in {2007..2016}; do
    for week in 1 14 27 40; do
        for release_zone_nr in 1; do
            srun --ntasks=1 --exclusive singularity run -B /sfs -B /gxfs_work1 -B $PWD:/work --pwd /work parcels-container_2022.07.14-801fbe4.sif bash -c \
                ". /opt/conda/etc/profile.d/conda.sh && conda activate base \
                && papermill --cwd notebooks \
                notebooks/release_larvae_brazil.ipynb \
                notebooks_executed/exec_release_larvae_brazil_zone${release_zone_nr}_${year}_w${week}.ipynb \
                -p RNG_seed ${RNG_seed} \
                -p start_year ${year} \
                -p start_week ${week} \
                -p runtime_in_days ${runtime} \
                -p number_particles ${number_particles} \
                -k python" &
            sleep 2
        done
    done
done
# wait till background task is done
wait

# print resource infos
jobinfo
