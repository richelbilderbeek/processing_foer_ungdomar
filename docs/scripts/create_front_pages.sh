#!/bin/bash

# Concatenate all Markdown files first, convert those to one PDF

build_folder=build

rm -rf "${build_folder}"
mkdir "${build_folder}"

if [ ! -d "${build_folder}" ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi

cp ../chapters/front_page/*.* "${build_folder}"
cd "${build_folder}" || exit 42

pandoc front_page_1.md -o ../../books/book_front_page_1.pdf
pandoc front_page_2.md -o ../../books/book_front_page_2.pdf
pandoc front_page_3.md -o ../../books/book_front_page_3.pdf
pandoc front_page_4.md -o ../../books/book_front_page_4.pdf
pandoc front_page_5.md -o ../../books/book_front_page_5.pdf
pandoc front_page_6.md -o ../../books/book_front_page_6.pdf
pandoc front_page_7.md -o ../../books/book_front_page_7.pdf
pandoc front_page_8.md -o ../../books/book_front_page_8.pdf

