# TAALaTeX
This `LaTeX` compatible software package has been created to help and assist Teacher Assistants to write and build their homeworks fast and structurized.

Also, you can use the template document class to write your homeworks as a student.

## How to use

It's very simple just clone the repo then copy the repo in the following path:

```sh
cp -r TAALaTeX $TEXMFHOME/tex/latex/
```

### Template 
In your LaTeX code you can use it as follow:

```latex
\documentclass[RTL]{TAATemplate} % For Right To Left texts
\documentclass[LTR]{TAATemplate} % For Left To Right texts
```
to set your own headers put the following codes after document class inclusion:

```latex
\renewcommand{\TAATemplateRHdr}{Statistical Mechanics / HW 1}
\renewcommand{\TAATemplateLHdr}{Ehsan Aramide}
```

This template is compatible with `XePersian` so you can use it with Persian texts very easily. See examples for more details.