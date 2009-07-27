\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{boistyle}
\LoadClass[11pt]{article}
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
%\RequirePackage{indentfirst}

\pagestyle{fancy}

\newcommand{\TranslationPageOf}[2]{Page #1 of #2}

\newcommand{\taskname}{}     % renew in taskdescription
\newcommand{\longtaskname}{} % renew in taskdescription
\newcommand{\countrycode}{ENG}
\newcommand{\version}{1.0}

%\overfullrule=3pt
%\showboxdepth=2 \showboxbreadth=50

\newlength{\LogoLength}\setlength{\LogoLength}{0cm}

\lhead{}\rhead{}
\chead{%
\begin{tabular}{@{}p{\LogoLength+2mm}@{}p{\textwidth-\LogoLength-2mm}@{}}%
\begin{minipage}[b]{\LogoLength}%
%\includegraphics[width=\LogoLength]{logo}%
%We will maybe have a logo here.
\end{minipage} &%
\begin{minipage}[b]{\textwidth-\LogoLength-2mm}%
\begin{centering}%
{\sffamily\scshape\Large Baltic Olympiad in Informatics}\\%[2mm]%
{\sffamily Stockholm, April 18-22, 2009}\vskip 1mm \hrule\vskip 2mm%
{\sffamily \makebox[0pt][l]{\TranslationPageOf{\thepage}{\pageref{LastPage}}}%
\hfill \countrycode
\hfill \makebox[0pt][r]{\textbf{\taskname}}}%
\end{centering}%
\end{minipage}%
\end{tabular}%
}
\lfoot{}\cfoot{}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\taskheadline}[1]{{\sffamily\bfseries\LARGE\centering#1\par}}


\AtBeginDocument{
\headheight=72pt%
\headsep=14pt%
\taskheadline{\longtaskname}%
\parindent=0pt%
\parskip=6pt
}

