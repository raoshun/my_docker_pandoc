Automating Document Generation Using Pandoc

# Introduction

This repository aims to automate document generation using Pandoc. Pandoc is a universal document converter that can convert various document formats to each other. This repository provides a Docker image to make it easy to use Pandoc.

# What is Pandoc?

Pandoc is a universal document converter developed by John MacFarlane. Using Pandoc, you can convert various document formats such as Markdown, HTML, and PDF. Pandoc is provided as a command-line tool, and you can customize the conversion settings using various options. The features of Pandoc are as follows:

- **Support for various formats**: Supports all formats that Pandoc supports, such as Markdown, HTML, and PDF.
- **Customizable**: You can customize the conversion settings using options as needed.
- **Easy setup**: Using Docker eliminates the need for installing and configuring Pandoc.
- **Extensible**: You can extend Pandoc's functionality using Lua filters and hooks.
- **Command-line interface**: Provided as a command-line tool, making it easy to call from shell scripts and Makefiles.
- **Open source**: Developed as an open-source project, and anyone can use it freely.

## Installation

To use Pandoc, you first need to install it. Pandoc can be downloaded and installed from the [official website](https://pandoc.org/). Additionally, Pandoc can be installed via the package manager of many Linux distributions. Below are the installation methods for some distributions.

# Proposed Method

This repository provides a Docker image to make it easy to use Pandoc. Using Docker eliminates the need for installing and configuring Pandoc. Additionally, using Docker eliminates environmental dependencies and ensures operation in different environments. The Docker image includes the latest version of Pandoc and can be used immediately.

# Environment Setup Process

## Installing luaLaTeX

```sh
docker run --rm -v $(pwd):/data my-docker-pandoc /data/README.md -o /data/README.pdf --pdf-engine=lualatex --pdf-engine-opt="-V documentclass=ltjsarticle -V luatexjapresetoptions=ipa"
lualatex: unrecognized option '-V documentclass=ltjsarticle -V luatexjapresetoptions=ipa'
lualatex: unrecognized option '-V documentclass=ltjsarticle -V luatexjapresetoptions=ipa'
```

The above error occurs because the `--pdf-engine-opt` specification method is incorrect. The correct specification method is as follows:

```sh
docker run --rm -v $(pwd):/data my-docker-pandoc /data/README.md -o /data/README.pdf --pdf-engine=lualatex -V documentclass=ltjsarticle -V luatexjapresetoptions=ipa
```

# Results

# Discussion

# Conclusion

# References