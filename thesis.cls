\ProvidesClass{thesis}

\LoadClass[12pt]{article}
\RequirePackage{sbc-template}
\RequirePackage{graphicx,url,fancybox,wrapfig}
\RequirePackage{multirow,tabularx}
\RequirePackage[portuguese,brazil]{babel}
\RequirePackage[latin1]{inputenc}
\RequirePackage{hyperref}
\RequirePackage{amsmath}
\RequirePackage{pdflscape}
\RequirePackage{enumerate}
\RequirePackage{rotfloat}
\RequirePackage{overpic}
\RequirePackage{slashbox}
\RequirePackage[normalem]{ulem}
\RequirePackage{cancel}

\pagestyle{plain}

% Espaçamento ao redor de captions
\setlength{\abovecaptionskip}{6pt}   % 0.5cm as an example
\setlength{\belowcaptionskip}{6pt}   % 0.5cm as an example

% Fonte para identificadores no modo matemático
\DeclareMathAlphabet{\mathsfsl}{OT1}{cmss}{m}{sl}
\def\mathid#1{\ensuremath{\mathcode"2D="2D\mathsfsl{#1}}}

% Definição de identificadores
\newcommand\tfidf{\mathid{tf-idf}}
\newcommand\tf{\mathid{tf}}
\newcommand\idf{\mathid{idf}}
\newcommand\df{\mathid{df}}
\newcommand\rW{\mathid{RW}_{t}}
\newcommand\rD{\mathid{RD}_{t,D}}
\newcommand\rQ{\mathid{RQ}_{t,Q}}

% Definição do hífen para modo matemático
\mathchardef\mhyphen="2D

\sloppy
