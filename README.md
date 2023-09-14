# 2023_sea_urchin_tenerife

## Description of the experiments

A dispersal experiment of virtual sea urchin larvea from Tenerife and from the African shelf regions. The virtual particles are released around Tenerife in an area shallower than 500 meters and at depths ranging from 0 to 30 meters. The simulation releases 10,000 particles weekly over 10 years from 2007 onwards, totaling 5.2 million particles, to account for year-to-year variations. Each virtual particle has a lifetime of 181 days, during which the abundance, geographical spread and distance to the release zone is tracked for particles that reach areas with less than 500 meters depth on the African shelf. In order to simulate larvae without chloroplasts, only the first 102 days after release are considered. The trajectories are saved daily and are weighted each day by a factor of $e^{-Mt}$ in the heatmaps using the instantaneous rate model to replicate mortality. The corresponding mortality $M$ for simulating particles with or without funtctional chloroplasts was used.

A second dispersal experiment is devised to simulate subsequent generations and spread along the African shelf and possible cross-Atlantic connections. A total of 2 million particles are evenly distributed on the shelf from 28°N to 10°S and released over 10 years (2007-1016). Multiple generations are simulated by using the geographical spread on the shelf of the previous generation as the release zone for the current generation. This was repeated until particles reached the southernmost area of Arbacia lixula’s range (red area, Fig. S17), where trans-Atlantic particles could be found (Fig. S21). This was conducted separately for particles with a lifespan of 181 days (with functional chloroplasts) and 102 days (without functional chloroplasts). 

## Contents of this repository

### Dispersal simulations

All dispersal simulations have been performed as definded in the following Jupyter Notebooks:

- [notebooks/release_larvae_african_shelf.ipynb](notebooks/release_larvae_african_shelf.ipynb) was executed using [jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh](jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh)

- [notebooks/release_larvae_tenerife.ipynb](notebooks/release_larvae_african_shelf.ipynb) was executed using [jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh](jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh)

All simulations were performed in the container image `quay.io/willirath/parcels-container:2022.07.14-801fbe4` defined in https://github.com/geomar-od-lagrange/parcels-container and available for download on https://quay.io/repository/willirath/parcels-container.

### Figures

The following Jupyter Notebooks contain all code used for producing the corresponding figures:
- [notebooks/plot_Fig4_S15_S16.ipynb](notebooks/plot_Fig4_S15_S16.ipynb)
- [notebooks/plot_S13_stats.ipynb](notebooks/plot_S13_stats.ipynb)
- [notebooks/plot_S14_S18.ipynb](notebooks/plot_S14_S18.ipynb)
- [notebooks/plot_S17.ipynb](notebooks/plot_S17.ipynb)
- [notebooks/plot_S19_S20_S21.ipynb](notebooks/plot_S19_S20_S21.ipynb)

### Release and target zones

There are CSV files containing the release zones and the target zone used in the experiment:
```
data/release_zone_exterior500.csv
data/release_zone_interior.csv
data/release_zone_shelf_10N_7E.csv
data/release_zone_shelf_20N_10N.csv
data/release_zone_shelf_30N_20N.csv
data/release_zone_shelf_7E_10S.csv
data/target_zone_shelf.csv
```

There are netCDF files _WHICH I'M NOT SURE HOW TO DESCRIBE_:
```
data/shelf_zone1.nc
data/shelf_zone2.nc
data/shelf_zone3.nc
data/shelf_zone4.nc
```
