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
cp ../kapitel/skriva/*.* $build_folder              ; mv $build_folder/README.md $build_folder/README_01.md

cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o bok.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp bok.pdf ../../boecker/test_bok_utan_framsida.pdf

cd ../../boecker || exit 43
pdfunite bok_framsida_1.pdf test_bok_utan_framsida.pdf test_bok.pdf

# Make booklet
bookletimposer -a test_bok.pdf -o test_haefte.pdf

rm test_bok_utan_framsida.pdf
