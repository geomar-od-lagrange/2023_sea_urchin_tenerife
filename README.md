# 2023_sea_urchin_tenerife

Parcels dispersal experiment of Sea Urchin larvea from Tenerife and from the African shelf regions.

## Description of the experiments

_ADD BRIEF DESCRIPTION OF THE EXPERIMENTS (AS IN THE PAPER)?_

## Contents of this repository

### Dispersal simulations

All dispersal simulations have been performed as definded in the following Jupyter Notebooks:

- [notebooks/release_larvae_african_shelf.ipynb](notebooks/release_larvae_african_shelf.ipynb) was executed using [jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh](jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh)

- [notebooks/release_larvae_tenerife.ipynb](notebooks/release_larvae_african_shelf.ipynb) was executed using [jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh](jobscripts/NOT_SURE_THIS_IS_CONSISTENT_YET.sh)

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