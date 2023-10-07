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


cp ../kapitel/foerord/*.*      $build_folder; mv $build_folder/README.md $build_folder/README_00.md
cp ../kapitel/3D_1/*.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../kapitel/3D_2/*.* $build_folder; mv $build_folder/README.md $build_folder/README_02.md
cp ../kapitel/3D_3/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md
cp ../kapitel/3D_4/*.* $build_folder; mv $build_folder/README.md $build_folder/README_04.md


cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_04.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o bok.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp bok.pdf ../../boecker/bok_6_utan_framsida.pdf

cd ../../boecker || exit 43
pdfunite bok_framsida_6.pdf bok_6_utan_framsida.pdf bok_6.pdf

# Make booklet
bookletimposer -a bok_6.pdf -o haefte_6.pdf

rm bok_6_utan_framsida.pdf
