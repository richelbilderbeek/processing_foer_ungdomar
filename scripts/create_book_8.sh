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

cp ../chapters/foerord/*.*      $build_folder; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/29_muspekare_i_fyrkant/*.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../chapters/30_muspekare_i_cirkel/*.* $build_folder; mv $build_folder/README.md $build_folder/README_02.md
cp ../chapters/31_cirklar_krockar/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md
cp ../chapters/32_fyrkanter_krockar/*.* $build_folder; mv $build_folder/README.md $build_folder/README_04.md

cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_04.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/book_8_without_front_page.pdf

cd ../../books || exit 43
pdfunite book_front_page_8.pdf book_8_without_front_page.pdf book_8.pdf

# Make booklet
bookletimposer -a book_8.pdf -o booklet_8.pdf

rm book_8_without_front_page.pdf
