#!/bin/bash

# This is a Bash script to download the source data sets

# Installation
# sudo apt install wget unzip

# Usage:
# bash -x scripts/download_data.sh

# Download compressed data (ZIP archives)
declare -a urls=(
  "https://docs.aiddata.org/ad4/datasets/AidDatas_Global_Chinese_Development_Finance_Dataset_Version_3_0.zip"
  "https://github.com/aiddata/gcdf-geospatial-data/releases/download/v3.0.1/OSM_grouped.zip"
  "https://jeodpp.jrc.ec.europa.eu/ftp/jrc-opendata/GHSL/GHS_SMOD_GLOBE_R2023A/GHS_SMOD_E2030_GLOBE_R2023A_54009_1000/V2-0/GHS_SMOD_E2030_GLOBE_R2023A_54009_1000_V2_0.zip"
  # This is the full GHSL data set (many GB in size)
  #"https://jeodpp.jrc.ec.europa.eu/ftp/jrc-opendata/GHSL/GHS_BUILT_S_GLOBE_R2023A/GHS_BUILT_S_E2030_GLOBE_R2023A_54009_100/V1-0/GHS_BUILT_S_E2030_GLOBE_R2023A_54009_100_V1_0.zip"
  "https://jeodpp.jrc.ec.europa.eu/ftp/jrc-opendata/GHSL/GHS_BUILT_S_GLOBE_R2023A/GHS_BUILT_S_E2030_GLOBE_R2023A_54009_100/V1-0/tiles/GHS_BUILT_S_E2030_GLOBE_R2023A_54009_100_V1_0_R12_C21.zip"
)
for url in "${urls[@]}"
do
  # https://manpages.ubuntu.com/manpages/noble/en/man1/wget.1.html
  wget -N "$url" --directory-prefix "./data"
done

# Decompress ZIP files
for path in data/*.zip
do
  # https://manpages.ubuntu.com/manpages/noble/man1/unzip.1.html
  unzip -n -d "./data" "$path"
done

# Shapefiles
url="https://naciscdn.org/naturalearth/110m/cultural/ne_110m_admin_0_countries.zip"
wget -N "$url" --directory-prefix "./shapefiles"

# Decompress ZIP files
for path in ./shapefiles/*.zip
do
  # https://manpages.ubuntu.com/manpages/noble/man1/unzip.1.html
  unzip -n -d "./shapefiles" "$path"
done
