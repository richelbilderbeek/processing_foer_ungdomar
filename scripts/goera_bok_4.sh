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


cp ../kapitel/foerord/*.* $build_folder   ; mv $build_folder/README.md $build_folder/README_00.md
cp ../kapitel/fullScreen/*.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../kapitel/PImage/*.* $build_folder    ; mv $build_folder/README.md $build_folder/README_02.md
cp ../kapitel/tyngdkraft/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md
cp ../kapitel/arrays_1/*.* $build_folder  ; mv $build_folder/README.md $build_folder/README_04.md
cp ../kapitel/arrays_2/*.* $build_folder  ; mv $build_folder/README.md $build_folder/README_05.md


cd $build_folder

cat README_00.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_01.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_02.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_03.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_04.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md
cat README_05.md >> README.md; echo " " >> README.md; echo "\pagebreak" >> README.md; echo " " >> README.md

pandoc README.md -o bok.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp bok.pdf ../../boecker/bok_4_utan_framsida.pdf

cd ../../boecker
pdfunite bok_framsida_4.pdf bok_4_utan_framsida.pdf bok_4.pdf

# Make booklet
bookletimposer -a bok_4.pdf -o haefte_4.pdf

rm bok_4_utan_framsida.pdf
