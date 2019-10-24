### Introduction

This is the README for using the `ppgem-paper-template` bundle LaTeX files 
required to compile correctly the template paper of the internal seminars of scientific writing at PPGEM/UFPB.


### Preamble 

The line 
``` latex
\documentclass[date]{ppgem} 
```
calls up the `ppgem.cls` class and accepts two option arguments: 

- `date`: prints the current date on the header.
- `nodate`: doesn't print.

### Data fields 

#### Title

- `\Title`: adds the title of your paper.

Use:

``` latex
\Title{Preparing your abstract to be presented at PPGEM's seminars: a first tutorial}
```

#### Author and advisor names

- `\AuthorName`: author's name 
- `\CorrEmail`: corresponding e-mail
- `\AdvisorName`: your advisor's name 
- `\CoAdvisorName`: your co-advisor's name
- `\Year`: year to which the paper is attached in the PPG-EM seminar series

Use: 

``` latex
\AuthorName{Medeiros, V.S.}
\CorrEmail{gustavo.oliveira@uerj.br}
\AdvisorName{Gustavo Oliveira}
\CoAdvisorName{Moisés Dantas} 
\Year{2019}

```

#### Institution

- `\InstA`: default is UFPB, as it should be (it is always required)
- `\InstB`: your co-advisor's institution, if any. 

Use: 

``` latex
\InstA{Federal University of Paraíba} 
\InstB{Federal University of Pernambuco} 
```
*Remarks:*

- If your co-advisor's institution is UFPB, the fields `\CoAdvisorName` and `InstB` are not required.
- If your co-advisor's institution is not UFPB, the fields `\CoAdvisorName` and `InstB` should be filled in.

#### Keywords 

Add up to 5 keywords to your paper in the environment `keywords` by separating them by commas.  

Use:

``` latex
\begin{keywords}
    keyword_1, keyword_2, keyword_3, keyword_4, keyword_5
\end{keywords}
```

### Files and directories

- `main.tex` is the LaTeX source file
- `refs.bib` is the bibTeX reference file
- `ppgem.cls` is the class file (beta version)
- `logos/` is the logo's directory
- `figs/` is the suggested directory where you may store your figures
- `instructions.txt` is the raw version of `README.md`

### Compilation through Makefile

If you use the command line, you may also compile your text by invoking

``` bash
make all
```
or clean the root directory by invoking

``` bash
make clean
```

### Meta

- Authors: 
  - Prof. Gustavo OLIVEIRA, D.Sc. (maintainer) :[mailto](mailto:gustavo.oliveira@ci.ufpb.br)
