#!/bin/bash

cd ../../../processing_foer_ungdomar/docs/scripts || echo "ERROR: Please run this script from the same folder as where it resides. Tip: 'cd scripts'" || exit 42


build_folder=build
book_number=9

rm -rf build
mkdir build

if [ ! -d ${build_folder} ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi


cp ../chapters/foreword/*.* $build_folder              ; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/33_funktioner_1/*.* $build_folder       ; mv $build_folder/README.md $build_folder/README_01.md
cp ../chapters/34_enum/*.* $build_folder               ; mv $build_folder/README.md $build_folder/README_02.md
cp ../chapters/35_klasser_1/*.* $build_folder          ; mv $build_folder/README.md $build_folder/README_03.md
cp ../chapters/36_funktioner_2/*.* $build_folder       ; mv $build_folder/README.md $build_folder/README_04.md

cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_04.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/book_${book_number}_without_front_page.pdf

cd ../../books || exit 43
pdfunite book_front_page_${book_number}.pdf book_${book_number}_without_front_page.pdf book_${book_number}.pdf

# Make booklet
bookletimposer -a book_${book_number}.pdf -o booklet_${book_number}.pdf

rm book_${book_number}_without_front_page.pdf
