## :bear: A Minimalist LuaLaTeX Resume 

A clean, simple, and ATS-friendly resume template for software developers. It's easy to read, easy to edit, and made so you don't waste your time with Google Docs or Canva (like I did).

This layout is based on the popular [sb2nov/resume](https://github.com/sb2nov/resume/), but rebuilt with LuaLaTeX, Makefile + Docker for proper UTF-8 handling, helping it get past ATS parsers (Applicant Tracking Systems).

## How to Use

### Build using Docker and Makefile

```sh
# Clone this repository
git clone https://github.com/felipebernardinello/resume.git
cd resume

# Edit bearsume.tex with your information

# Compile the PDF (runs lualatex twice)
make pdf

```

### License

Apache 2.0
