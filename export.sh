#!/bin/bash

# Setup paths
export_dir=$(pwd)/exported
html_dir=${export_dir}/html
pdf_dir=${export_dir}/pdf
mkdir -p ${html_dir} ${pdf_dir}

# Gotta catch 'em all
themes=(elegant paper kendall flat modern classy class short slick kwan onepage spartan stackoverflow)

for theme in ${!themes[*]}
do
  theme_name=${themes[$theme]}

  echo "Attemping to export theme '${theme_name}' via PDF:"
  echo "=================================================="
  ./node_modules/.bin/resume export ${pdf_dir}/william_jonathan_porta_cv-${theme_name} --theme ${theme_name} --format pdf
  echo "=================================================="

  echo "Attemping to export theme '${theme_name}' via HTML:"
  echo "=================================================="
  ./node_modules/.bin/resume export ${html_dir}/william_jonathan_porta_cv-${theme_name} --theme ${theme_name} --format html
  echo "=================================================="
done
