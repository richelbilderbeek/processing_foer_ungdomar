# Processing för ungdomar


[![Build PDF documents](https://github.com/richelbilderbeek/processing_foer_ungdomar/actions/workflows/build_pdfs.yaml/badge.svg?branch=master)](https://github.com/richelbilderbeek/processing_foer_ungdomar/actions/workflows/build_pdfs.yaml)
[![check-links](https://github.com/richelbilderbeek/processing_foer_ungdomar/actions/workflows/check_links.yaml/badge.svg?branch=master)](https://github.com/richelbilderbeek/processing_foer_ungdomar/actions/workflows/check_links.yaml)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21807366.svg)](https://doi.org/10.5281/zenodo.21807366)

![Processing 4 logo](docs/logos/processing4_logo_50.png)

- [Go to the nicely rendered website](https://richelbilderbeek.github.io/processing_foer_ungdomar)

## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 --><!-- Table rows must be put on one line, hence 80 chars is unavoidable -->

Filename                                    |Descriptions
--------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[`mlc_config.json`](mlc_config.json)        |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[`.markdownlint.jsonc`](.markdownlint.jsonc)|Configuration of the Markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[`.markdownlintignore`](.markdownlintignore)|Files ignored by the Markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
