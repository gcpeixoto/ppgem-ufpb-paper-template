### Introduction

This is the README for using the `ppgem-paper-template` bundle LaTeX files 
required to compile correctly the template paper of the internal seminars of scientific writing at PPGEM/UFPB.


### Preamble 

The line 
``` latex
\documentclass[date]{ppgem} 
```
calls up the `ppgem.cls` class and accepts two option arguments: 

- `date`/`nodate`: activate/deactivate the stamp of the event date on the header.
- `links`/`nolinks`: activate/deactivate highlights links.

### Data fields 

Title, authors and affiliations are called exactly in the same way as `\authblk` package's commands.

#### Title 

Use capital letters for nouns and small letters for articles, pronouns, and prepositions.  

```latex
% this is the title
\title{How to Prepare your Short Paper for the Scientific Writing Session}


% this is the author block
% template: \author[n]{Name} 
% The number n =1,2,3,... agrees with the affiliation index
% e.g. 
%\author[1]{Name 1}
%\author[1]{Name 2}
%\author[2]{Name 3}
% etc.

\author[1]{Clausius, E. P.}
\author[1]{Quintus, N. P.}
\author[1]{Betis, H. D.}
 
% The last author name is reserved for the advisor
\author[1,*]{Venius, O. P.}


% For authors and co-authors from the same institution, it suffices a unique \affil[1]
% \affil[1]{Postgraduate Program in Mechanical Engineering, Federal University of Paraíba.}

% e-mail
% Use a dummy affil for author's e-mails
\affil[ ]{clausius@ct.ufpb.br, % 
	  quintus@ct.ufpb.br, %
	  betis@ct.ufpb.br}

% advisor's e-mail
\affil[*]{\textbf{Advisor:} venius@ct.ufpb.br}
```

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
  - Prof. Gustavo OLIVEIRA, Dr. (maintainer) :[mailto](mailto:gustavo.oliveira@ci.ufpb.br)
