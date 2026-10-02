# beamertheme-fhs – Beamer theme for FH Salzburg

Version 1.0, 2026-10-02

`beamertheme-fhs` is a LaTeX Beamer theme following the corporate design of the
Salzburg University of Applied Sciences (Fachhochschule Salzburg, FH Salzburg).
It provides a title page with the FH Salzburg logos, a frame title with logo,
a footline with date, institute, author and frame number, "standout" frames
for highlighted statements and optional auto-generated Creative Commons license
notices on the title page (in English or German, depending on the document language).

The full documentation is available in `beamertheme-fhs-doc.pdf`.

# Installation

If the theme is not provided by your TeX distribution, copy or link the folder
`beamertheme-fhs` to `$TEXMFHOME/tex/latex/beamertheme-fhs`. The value of
`$TEXMFHOME` is shown by `kpsewhich -var-value TEXMFHOME`.

# Usage

Select theme with `\usetheme{fhs}`.

## Creative Commons License

If you want to license your slides under a Creative Commons license this package supports
template options to add some license hints directly on the title page.

The following options are allowed:

1. `\usetheme[license=ccby]{fhs}` - Adding a Creative Commons by license to the title page
2. `\usetheme[license=ccbysa]{fhs}` - Adding a Creative Commons by share alike license to the title page

The title page will then contain a full CC hint containing title and author
(taken automatically from the slides meta data) and a license notice:

![Example image of a CC licensed title page](intro-slide-cc-notice.png)

## Pandoc and RMarkdown

When converting plain Markdown with Pandoc, select the theme and the license option
in the YAML metadata block:

```
theme:
    - fhs
themeoptions:
    - license=ccbysa
```

For RMarkdown, set the theme and its options in the `output` section of the metadata:

```
output:
  beamer_presentation:
    theme: fhs
    pandoc_args: [
      "-V", "themeoptions:license=ccbysa"
    ]
```

# Contents

| File                          | Description                          |
|-------------------------------|--------------------------------------|
| `beamerthemefhs.sty`          | main theme, loads the themes below   |
| `beamercolorthemefhs.sty`     | color theme                          |
| `beamerfontthemefhs.sty`      | font theme                           |
| `beamerinnerthemefhs.sty`     | inner theme (title page, frames)     |
| `beamerouterthemefhs.sty`     | outer theme (frame title, footline)  |
| `logo-fhs*.pdf`               | FH Salzburg logos (see below)        |
| `beamertheme-fhs-doc.tex/pdf` | documentation (source and PDF)       |
| `intro-slide-cc-notice.png`   | example image used in this README    |

# Author and Contact

Andreas Bilke <andreas.bilke@fh-salzburg.ac.at>

Bug reports and contributions: https://github.com/FHS-Creative-Technologies/beamertheme-fhs

# Theme License

Except where otherwise noted, this work "beamertheme-fhs" by Andreas Bilke
is licensed under CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/).

It is partially based on code from the metropolis theme by Matthias Vogelgesang
and the LaTeX community (https://github.com/matze/mtheme/) licensed
under CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/).

The files `logo-fhs.pdf`, `logo-fhs-without-text.pdf`, `logo-fhs-krn.pdf` and
`logo-fhs-background.pdf` are copyright by the
[Salzburg University of Applied Sciences](https://www.fh-salzburg.ac.at).
