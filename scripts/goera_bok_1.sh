#!/bin/bash

# Concatenate all Markdown files first, convert those to one PDF

build_folder=build
#echo $build_folder

rm -rf build
mkdir build

if [ ! -d $build_folder ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi


cp ../kapitel/foerord/*.* $build_folder             ; mv $build_folder/README.md $build_folder/README_00.md
cp ../kapitel/ett_vackert_program/*.* $build_folder ; mv $build_folder/README.md $build_folder/README_01.md
cp ../kapitel/flytta_bollen_till_hoeger/*.* $build_folder  ; mv $build_folder/README.md $build_folder/README_02.md
cp ../kapitel/width_och_height/*.* $build_folder    ; mv $build_folder/README.md $build_folder/README_03.md
cp ../kapitel/point_och_random/*.* $build_folder    ; mv $build_folder/README.md $build_folder/README_04.md

cd $build_folder

cat README_00.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_01.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_02.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_03.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_04.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md

pandoc README.md -o bok.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp bok.pdf ../../boecker/bok_1_utan_framsida.pdf

cd ../../boecker
pdfunite bok_framsida_1.pdf bok_1_utan_framsida.pdf bok_1.pdf

# Make booklet
bookletimposer -a bok_1.pdf -o haefte_1.pdf

rm bok_1_utan_framsida.pdf
