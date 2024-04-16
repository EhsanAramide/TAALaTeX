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


## Environments
As of now there are two environments, the `exercise` and `answer` environment.
you can use them as follows:

### Exercise
Here is an example usage:
```latex
\begin{exercise}[EXERCISE TITLE]
Exercise Content goes here.
\end{exercise}
```
You can reference the exercise number within the document using `\ref{}` and `\label{}` as usual. For example, `\ref{exercise_label}` would refer to the exercise labeled with `\label{exercise_label}`.

### Answer
Here is an example usage:
```latex
\begin{answer}
Answer goes here.
\end{answer}
```
This template is compatible with `XePersian` so you can use it with Persian texts very easily. See examples for more details.

## TODO

- [ ] Check for Environment compatibility with persian text (XePersian)
- [ ] Create Example with environment and logo.
