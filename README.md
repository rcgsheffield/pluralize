# PLURALIZE geospatial analysis

This is exploratory data analysis for the PLURALIZE project to investigate Chinese investment.
The data analysis workflows are contained in [Jupyter Notebooks](https://docs.jupyter.org/en/latest/) that contains Python code that implements the geospatial analysis process.

# Installation

1. [Install Conda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html)
2. Create a [virtual environment](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)

```
conda env create --name pluralize --file environment.yaml
```

3. [Activate](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#activating-an-environment) that environment

```bash
conda activate pluralize
```

## Data

This repository contains a [Bash script](https://swcarpentry.github.io/shell-novice/) called `scripts/download_data.sh` that downloads the following data sets into the `./data` directory:

* [AidData's Global Chinese Development Finance Dataset, Version 3.0](https://www.aiddata.org/data/aiddatas-global-chinese-development-finance-dataset-version-3-0)
* [Geocoded Global China Data
  AidData's Geospatial Global Chinese Development Finance Dataset, Version 3.0](https://www.aiddata.org/data/aiddatas-geospatial-global-chinese-development-finance-dataset-version-3-0)
* [GHSL - Global Human Settlement Layer](https://human-settlement.emergency.copernicus.eu/ghs_smod2019.php)

and the following shape files into the `./shapefiles` directory:

* Natural Earth [1:110m Cultural Vectors](https://www.naturalearthdata.com/downloads/110m-cultural-vectors/)

# Usage

Run [Jupyter Lab](https://jupyter.org/) to open the notebooks

```bash
jupyter lab
```

Open the notebooks in the `./notebooks` directory. The code assumes the data files are organised in a specific way in the `./data` directory.

For more information on using notebooks, please read the [Jupyter Notebooks documentation](https://docs.jupyter.org/en/latest/projects/content-projects.html).
