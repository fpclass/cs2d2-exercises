%-----------------------------------------------------------
% LaTeX class for exercise sheets at Warwick
% Copyright 2018 Michael B. Gale (m.gale@warwick.ac.uk)
%-----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uow-exercises}[2018/07/24 UoW Exercise Class]

%% Process given options
\ProcessOptions\relax

\LoadClass[12pt,twoside,fleqn]{article}

\usepackage[latin1]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
%\usepackage{fancyeq}
\usepackage[a4paper]{geometry}
\usepackage{fancyhdr}
\usepackage[explicit]{titlesec}
\usepackage{color}
\usepackage{longtable}
\usepackage{array, booktabs}
%\usepackage{graphicx}
%\usepackage[x11names]{xcolor}
\usepackage{colortbl}
%\usepackage{caption}
\usepackage{wrapfig}
\usepackage{tikz}
\usetikzlibrary{arrows}
\usepackage{pgfplots}
\usepackage{enumitem}
\usepackage{titling}

% UK English
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}

% Chapter, section, etc. formats
\titleformat{name=\chapter}[hang]{}{}{0cm}{%
	\begin{center}
		\large Chapter \thechapter \\
		\huge \textsc{#1}
	\end{center}
	%\chaptermark{\chapter}
}
\titleformat{name=\chapter,numberless}[hang]{}{}{0cm}{%
	\begin{center}
		\huge \textsc{#1}
	\end{center}
	%\chaptermark{\chapter}
}

\titleformat{\section}
{\bfseries\large}
{\llap{\parbox{1.5cm}{\thesection\hfill}}#1}
{0em}
{\bfseries}

\titleformat{name=\section,numberless}
{\bfseries\large}
{\llap{\parbox{1.5cm}{\hfill}}#1}
{0em}
{\bfseries}

\titleformat{\subsection}
{\bfseries}{\llap{\parbox{1.5cm}{\thesubsection\hfill}}#1}{0em}{\bfseries}
\titleformat{name=\subsection,numberless}
{\bfseries}{\llap{\parbox{1.5cm}{\hfill}}#1}{0em}{\bfseries}


% Hyperref
\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=black,
	urlcolor=black,
	citecolor=black
}

\usepackage[]{FiraSans}

% Palatino (font)
\usepackage{mathpazo}
%\usepackage{newpxtext,newpxmath}
\linespread{1.05}         % Palatino needs more leading (space between lines)
\usepackage[T1]{fontenc}

% some format settings
% for hard-bound final submission, use:
%\setlength{\oddsidemargin}{4.6mm}     % 30 mm left margin - 1 in
% for soft-bound version and techreport, use instead:
\setlength{\oddsidemargin}{-0.4mm}    % 25 mm left margin - 1 in
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\topmargin}{-5.4mm}        % 20 mm top margin - 1 in
\setlength{\textwidth}{160mm}         % 20/25 mm right margin
\setlength{\textheight}{237mm}        % 20 mm bottom margin
\setlength{\headheight}{5mm}
\setlength{\headsep}{5mm}
\setlength{\parindent}{0mm}
\setlength{\parskip}{\medskipamount}
\renewcommand\baselinestretch{1.2} % thesis format (not needed for techreport)
% don't let large figures hijack entire pages
\renewcommand\topfraction{.9}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.8}

\usepackage[nomap]{FiraMono} 

% misc. commands
\newcounter{TaskCounter}

\newcommand{\question}[1]{\vspace{-0.7cm}{\footnotesize \emph{#1}} \vspace{0.25cm}}
\newcommand{\topics}[1]{\vspace{-0.5cm}{\footnotesize \emph{Goals}: #1} \vspace{0.25cm}}
\newcommand{\task}[2][]{\indent\llap{\parbox{1.5cm}{\refstepcounter{TaskCounter}\label{#1}{\firamedium Ex\theTaskCounter}\hfill}}#2}
\newcommand{\solution}[2]{\indent\llap{\parbox{1.5cm}{\textbf{Ex#1}\hfill}}#2}
\newcommand{\taskLine}{\bigskip\hrule\bigskip}
\newcommand{\resetTaskCounter}{\setcounter{TaskCounter}{0}}

%\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE, RO]{\emph{\thetitle}}
\fancyhead[LO, RE]{\emph{\theauthor}}
%\fancyhead[RE,LO]{Guides and tutorials}
%\fancyfoot[CE,CO]{\leftmark}
\fancyfoot[LE,RO]{\thepage}
%\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
