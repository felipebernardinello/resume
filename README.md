## :bear: A Minimalist LuaLaTeX Resume

A clean and simple resume template for software developers, built with LuaLaTeX (better UTF-8 handling + ATS friendly). It's easy to read, easy to edit, and made so you don't waste your time with Google Docs or Canva (like I did).

This layout is based on the popular [sb2nov/resume](https://github.com/sb2nov/resume/).

## Requirements

Before you get started, make sure you’ve got:

- [Docker](https://docs.docker.com/get-docker/) installed and running
- [GNU Make](https://www.gnu.org/software/make/) available on your system (Linux usually have it by default)

## How to Use

### Build using Docker and Makefile

```sh
# Clone this repository
git clone https://github.com/felipebernardinello/resume.git
cd resume

# Edit resume.tex with your information

# Compile the PDF (runs lualatex twice)
make pdf

```

### License

Apache 2.0
