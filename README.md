# Installation

Link/copy the `beamertheme-fhs` folder to `$TEXMF/tex/latex`.

# Usage

Select theme with `\usetheme{fhs}`.

## Creative Commons License

If you want to license your slides under a Creative Commons license this package supports
template options to add some license hints directly on the first slides.

The following options are allowed:

1. `\usetheme[license=ccby]{fhs}` - Adding a Creative Commons by license to the front page
2. `\usetheme[license=ccbysa]{fhs}` - Adding a Creative Commons by share alike license to the front page

The first page will then contain a full CC hint containing title and author
(taken automatically from the slides meta data) and a license notice:

![Example image of a CC licensed first page](intro-slide-cc-notice.png)

## Pandoc Style Documents with Creative Commons License

Add the following to your Markdown meta data section to enable the fhs template together with
the CC license option:

```
output:
  beamer_presentation:
    theme: fhs
    pandoc_args: [
      "-V", "themeoptions:license=ccbysa"
    ]
```

# Theme License

Except where otherwise noted, this work "beamerfhs" by Andreas Bilke
is licensed under CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/).

It is partially based on code from the metropolis theme by Matthias Vogelgesang
and the LaTeX community (https://github.com/matze/mtheme/) licensed
under CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/).

The files `logo-fhs.pdf`, `logo-fhs-without-text.pdf`, `logo-fhs-krn.pdf` and
`logo-fhs-background.pdf` are copyright by the
[University of Applied Sciences](https://www.fh-salzburg.ac.at).
