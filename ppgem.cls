%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    METADATA:
%	   file: ppgem.cls 
%    date: 2019, October
%    author: PEIXOTO DE OLIVEIRA, Gustavo 
%	   e-mail: gustavo.oliveira@ci.ufpb.br 
%
%    LICENSE:
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.
%    
%    DESCRIPTION
%    This class file was intened to comply with formatting and publication specs for 
%    scientific writing seminars and sessions taking place at the Graduate Program 
%    in Mech. Eng. at the Federal University of Paraíba (PPGEM/UFPB).
%    (http://www.ufpb.br/ppgem)
%    This file is currently maintained by Gustavo Peixoto de Oliveira.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e} 													 	

\ProvidesClass{ppgem}[2019/10/24 PPGEM UFPB paper class]  

% Prevented options
\DeclareOption{10pt}{\OptionNotUsed} 
\DeclareOption{12pt}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} %  accept entries; * lets handle non-implemented options

% Standard options to compile
\ExecuteOptions{11pt,a4paper} 

% define option to use or not links
\def\uselinks{1}
\DeclareOption{links}{ \def\uselinks{1} }
\DeclareOption{nolinks}{ \def\uselinks{0} }

% define option to input or not date
\def\usedate{1}
\DeclareOption{date}{ \def\usedate{1} }
\DeclareOption{nodate}{ \def\usedate{0} }

%\newcommand{\isempty}[1]{%
%  \@ifmtarg{#1}{\def\flag{1}}{\def\flag{0}}}

% process options
\ProcessOptions\relax
\LoadClass[a4paper]{article}									% loads based on article class

% required packages and settings
\RequirePackage[T1]{fontenc}   								% allows accented characters
\RequirePackage[utf8]{inputenc} 
\RequirePackage{calc}											% allows arithmetic among Latex expressions
\RequirePackage{lipsum}										% inserts Latin text sample
\RequirePackage{graphicx}										% includes figures
\RequirePackage[english]{babel}   			% English as main language; Portuguese as the second
\RequirePackage{epsf,epsfig} 									% insert '.eps', ' .ps' postscript figures
\RequirePackage{setspace} 									% specify line spacing for sections and paragraphs through built-in commands 
\RequirePackage[skip=2pt,hang]{caption} 			    % include caption
\RequirePackage{subfig} 										% use subfigure environment
\RequirePackage{nonfloat} 										% centralises tables and figs under nonfloat option [h] "here" 
\RequirePackage{amsfonts,amsmath,amssymb,bm} 	% use a plethora of mathematical AMS fonts
\RequirePackage{semtrans} 									% supports semitic languages
\RequirePackage{cjhebrew} 									% allows hebrew characters
\RequirePackage{upgreek}  									% upright style for Greek fonts 
\RequirePackage{blkarray} 										% labeled rows/columns in matrices
\RequirePackage[left]{lineno} 									% line numbering
\RequirePackage[svgnames]{xcolor} 						% 'svgnames'; color list: http://www.latextemplates.com/svgnames-colors
\RequirePackage{titlesec}	 									% provides additional features for titles
\RequirePackage[margin=2cm]{geometry}				% page layout
\RequirePackage[numbers]{natbib}							% bibliography
\RequirePackage{nomencl}										% nomenclature
\RequirePackage{ifthen}											% conditional
\RequirePackage[noblocks]{authblk} 						% author, affiliation 
\RequirePackage{multicol} 										% use of multiple columns
\RequirePackage{fancyhdr}										% page layout headers
\RequirePackage{tikz}											% duiagrams
\usetikzlibrary{shapes,shadows,arrows}					% shapes
\RequirePackage{indentfirst}  									% indents paragraph first line
% LOAD 'microtype' PACKAGE LAST!
\RequirePackage{microtype} 									% text kerning (ajuste de espaço de caracter)

% paragraph
\setlength{\parindent}{0pt} % changes indent length
\setlength{\parskip}{2mm} 

% newcommands
\newcommand{\AuthorName}[1]{\def\@AuthorName{#1}}
\newcommand{\AdvisorName}[1]{\def\@AdvisorName{#1}}
\newcommand{\CoAdvisorName}[1]{\def\@CoAdvisorName{#1}}
\newcommand{\Title}[1]{\def\@Title{#1}}
\newcommand{\CorrEmail}[1]{\def\@CorrEmail{#1}}
\newcommand{\InstA}[1]{\def\@InstA{#1}}
\newcommand{\InstB}[1]{\def\@InstB{#1}}
\newcommand{\Year}[1]{\def\@Year{#1}}

% use color links
\ifnum \uselinks = 1
\RequirePackage{color}
\definecolor{lkcolor}{rgb}{0.0,0.5,0.0}
\definecolor{url}{rgb}{0.,0.,0.5} % def NavyBlue
\RequirePackage[colorlinks,linkcolor=lkcolor,%
                urlcolor=url,citecolor=blue]{hyperref}
\fi

%% logo strip
\newcommand{\header}{
\begin{minipage}{\linewidth}
\begin{minipage}{\linewidth}
	\begin{minipage}{0.45\linewidth}
		\flushleft
		\includegraphics[height=15mm]{logos/logo-ufpb.png}
	\end{minipage}
\null\hfill
	\begin{minipage}{0.45\linewidth}
		\flushright
        \includegraphics[height=15mm]{logos/logo_pc.png}
		\includegraphics[height=15mm]{logos/logo-ppgem.png}
	\end{minipage}
\end{minipage}
%% title
\begin{center}
\large{ \color{NavyBlue} \textbf{ \MakeUppercase{ \@Title } } }   
\end{center}
%% author
\begin{minipage}{0.7\linewidth}
\ifthenelse{ \equal{\@InstB}{} }{	 % checks if institutionB is empty
\begin{tabular}{rl}
\textbf{Author:} & \@AuthorName$^{1}$ \qquad  \href{mailto:\@CorrEmail}{ \textit{ \@CorrEmail} } \\
\textbf{Advisor(s):} & \@AdvisorName$^{1}$ \\
 & \quad { \scriptsize $^{1}$ \@InstA } \\
\end{tabular}
}
{
\begin{tabular}{rl}
\textbf{Author:} & \@AuthorName$^{1}$ \qquad  \href{mailto:\@CorrEmail}{ \textit{ \@CorrEmail} } \\
\textbf{Advisors:} & \@AdvisorName$^{1}$ \text{; \! } \@CoAdvisorName$^{2}$ \\
 & \quad { \scriptsize $^{1}$ \@InstA } \\
 & \quad { \scriptsize $^{2}$ \@InstB }
\end{tabular}
}
\end{minipage}
\end{minipage}
}

%% date strip
\newcommand{\strip}{
\begin{minipage}{\linewidth}
\ifthenelse{ \usedate = 1 }{
\begin{minipage}{0.495\textwidth}
	\flushleft
	\vspace{5pt}
	{ \color{NavyBlue} \today}
\end{minipage}
}{
\begin{minipage}{0.495\textwidth}
	\vspace{5pt}
	\hfill\hspace{0.495\textwidth}
\end{minipage}
}
\begin{minipage}{0.495\textwidth}
	\flushright
	{ \color{NavyBlue} \textsf{PPGEM Scientific Writing Seminars: Season \textbf{\@Year} } 
	\\ \url{www.ct.ufpb.br/ppgem} } 
\end{minipage} 
\smallskip 
\hrulefill
\end{minipage}
}

%% builds header
\newcommand{\makeheader}{
\header
\strip
}

%% defines keywords
\newenvironment{keywords}{
{\vrule width 3pt}
\setlength\baselineskip{5pt}
\noindent \textbf{Keywords: } 
\smallskip}

%%%--------------- 
%% section formatting
% \@startsection{<name>}{<level>}{<indent>}{<beforeskip>}{<afterskip>}{<style>}*[<altheading>]{<heading>} ; 
% part after the *, including the * is optional.
\renewcommand{\section}{\@startsection{section}{1}{0mm}{6pt}{6pt}{\bfseries \normalsize }}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}{6pt}{6pt}{\bfseries\normalsize }}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}{6pt}{6pt}{\normalsize }}

%% redefining names
\renewcommand{\refname}{\normalsize{References}}
\renewcommand{\nomname}{List of Symbols}

%% nomenclature
\renewcommand{\nomgroup}[1]{%
\ifthenelse{\equal{#1}{R}}{\item[\textbf{Roman letters}]}{%
\ifthenelse{\equal{#1}{G}}{\item[Greek letters]}{}}}

%% commands
\newcommand{\lsp}{\linespread{1.3}} % equivalent to Word 1.5 spacing
%\newcommand{\lspd}{\linespread{1.6}} % equivalent to Word double spacing
