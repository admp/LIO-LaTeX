%%
%% LaTeX class definition for LIO problem statements
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{liostyle}
\LoadClass[11pt,a4paper]{article}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{times}
\RequirePackage{a4wide}
\RequirePackage{graphicx}
\RequirePackage{pstricks}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{times}
\RequirePackage{listings}
\RequirePackage{amsmath}
\RequirePackage[sf,sl,topmarks]{titlesec}
\RequirePackage[lithuanian]{babel}

\pagestyle{fancy}

% Things below are specific to littex, i.e. font encoding
% and using Courier as fixed-width font instead of cmr family.
% Might want to try XeTeX one day.
\def\LTfontencoding{L7x}
\usepackage[\LTfontencoding]{fontenc}
%\renewcommand{\sfdefault}{uhv}
%\renewcommand{\rmdefault}{utm}
\renewcommand{\ttdefault}{ucr}

%%
%% Variables
%%

\newcommand{\taskname}{}     % renew in taskdescription
\newcommand{\longtaskname}{} % renew in taskdescription
\newcommand{\version}{1.0}

%%
%% Strings
%%

\newcommand{\Olympiad}{Lietuvos moksleivių informatikos olimpiada}
\newcommand{\LocationDate}{Vilnius, 2009 m. kovo 14-18}

\newcommand{\PageOf}[2]{psl. #1 iš #2}
\newcommand{\TitleTask}{Užduotis}
\newcommand{\TitleOutput}{Rezultatai}
\newcommand{\TitleInput}{Pradiniai duomenys}
\newcommand{\TitleExamples}{Pavyzdžiai}
\newcommand{\TitleConstraints}{Ribojimai}
\newcommand{\TitleGrading}{Vertinimas}

%%
%% Page layout
%%

%\overfullrule=3pt
%\showboxdepth=2
%\showboxbreadth=50

\newlength{\LogoLength}\setlength{\LogoLength}{1.4cm}
\newcommand{\Logo}{logo_titleless}

\lhead{}\rhead{}
\chead{%
    \begin{tabular}{@{}p{\LogoLength+5mm}@{}p{\textwidth-\LogoLength-5mm}@{}}%
    \begin{minipage}[b]{\LogoLength}%
    \includegraphics[width=\LogoLength]{\Logo}
    \end{minipage} &%
    \begin{minipage}[b]{\textwidth-\LogoLength-5mm}%
    {\sffamily\Large\Olympiad}
    \vskip 2mm \hrule\vskip 2mm%
    {\sffamily\makebox[0pt][l]{\LocationDate}%
    \hfill\ttfamily\bfseries\makebox[0pt][r]{\taskname}}
    \vskip 1mm%
    {\sffamily\small\hfill
     \makebox[0pt][r]{\PageOf{\thepage}{\pageref{LastPage}}}}%
    \end{minipage}%
    \end{tabular}%
}
\lfoot{}\cfoot{}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%%
%% Headings
%%

\newcommand\periodafter[1]{#1.}
\newcommand\newsec[2]%
  {\titleformat{#1}[#2]%
    {\normalfont\bfseries}{\thesection.}{1em}{\periodafter}%
   \titlespacing*{#1}{0pt}{10pt}{1.5ex plus .2ex}}

\newsec{\section}{runin}
\newsec{\subsection}{block} % quick ugly hack

\newcommand\Task{\section*{\TitleTask}}
\newcommand\Input{\section*{\TitleInput}}
\newcommand\Output{\section*{\TitleOutput}}
\newcommand\Examples{\subsection*{\TitleExamples}}
\newcommand\Grading{\section*{\TitleGrading}}
\newcommand\Constraints{\section*{\TitleConstraints}}

%%
%% Body
%%

\newcommand{\taskheadline}[1]{{\sffamily\bfseries\LARGE\noindent#1\par}}
\AtBeginDocument{
    \headheight=72pt%
    \headsep=14pt%
    \taskheadline{\longtaskname}%
    \parindent=0pt%
    \parskip=6pt
}

% vi: ts=4 sw=4 enc=utf-8
