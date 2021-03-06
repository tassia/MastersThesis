\ProvidesClass{thesis}

\LoadClass[11pt,a4paper,twoside,openright]{memoir}
\RequirePackage{makeidx}
\RequirePackage{graphicx,url,fancybox,fancyvrb,wrapfig}
\RequirePackage{multirow,tabularx,colortbl,ltxtable}
\RequirePackage[table]{xcolor}
\RequirePackage[english,brazilian]{babel}
\newcommand{\keywordsname}{""}
\addto\captionsenglish{\renewcommand{\keywordsname}{Keywords}}
\addto\captionsbrazilian{\renewcommand{\keywordsname}{Palavras-chave}}
\RequirePackage[latin1]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage{ae,aecompl}
\RequirePackage{amsmath}
\RequirePackage{pdflscape}
\RequirePackage{enumerate}
\RequirePackage{rotfloat}
\RequirePackage{overpic}
\RequirePackage{tikz}
\RequirePackage{slashbox}
\RequirePackage[normalem]{ulem}
\RequirePackage{cancel}
\RequirePackage[a4paper,inner=3.0cm,outer=2.5cm,top=2.5cm,bottom=2.5cm,pdftex]{geometry}
\RequirePackage[colorlinks=true,linkcolor=magenta,urlcolor=blue]{hyperref}

\chapterstyle{bianchi}
\pagestyle{empty}
\maxsecnumdepth{subsubsection}
\sloppy
\hyphenpenalty=750

\pgfrealjobname{thesis-tassia}

% Definição da capa da dissertação com base em:
% http://zoonek.free.fr/LaTeX/LaTeX_samples_title/0.html
% (comentários em francês preservados)

\makeatletter
% Une commande sembleble à \rlap ou \llap, mais centrant son argument
\def\clap#1{\hbox to 0pt{\hss #1\hss}}
% Une commande centrant son contenu (à utiliser en mode vertical)
\def\ligne#1{
  \hbox to \hsize{
    \vbox{\centering #1}}}
% Une comande qui met son premier argument à gauche, le second au
% milieu et le dernier à droite, la première ligne ce chacune de ces
% trois boites coïncidant
\def\haut#1#2#3{
  \hbox to \hsize{
    \rlap{\vtop{\raggedright #1}}
    \hss
    \clap{\vtop{\centering #2}}
    \hss
    \llap{\vtop{\raggedleft #3}}}}
% Idem, mais cette fois-ci, c'est la dernière ligne
\def\bas#1#2#3{
  \hbox to \hsize{
    \rlap{\vbox{\raggedright #1}}
    \hss
    \clap{\vbox{\centering #2}}
    \hss
    \llap{\vbox{\raggedleft #3}}}}
% La commande \maketitle
\def\maketitle{
  \thispagestyle{empty}\vbox to \vsize{
    \haut{}{\@blurb}{}
    \vfill
    \ligne{\LARGE \@title}
    \vspace{15mm}
    \ligne{\Large \@author}
    \vspace{1mm}\ligne{\texttt{<\@email>}}
    \vspace{1cm}
    \vfill
    \vfill
    \bas{}{\@location, \@date}{}
    }
  \cleardoublepage
  }
% Les commandes permettant de définir la date, le lieu, etc.
\def\date#1{\def\@date{#1}}
\def\author#1{\def\@author{#1}}
\def\title#1{\def\@title{#1}}
\def\location#1{\def\@location{#1}}
\def\blurb#1{\def\@blurb{#1}}
\def\email#1{\def\@email{#1}}

% Redefinição de estilo para resumo
\renewenvironment{abstract}
{\cleardoublepage \null \vfill
 \begin{center} \bfseries \abstractname \end{center}}
{\vfill\null}
\def\keywords{\par \vspace{0.2cm}\hspace{-0.75cm} {\bfseries \keywordsname :} }
\def\endkeywords{\par}

\makeatother

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

%box cinza
\long\def\greybox#1{%
   \newbox\contentbox%
   \newbox\bkgdbox%
   \setbox\contentbox\hbox to \hsize{%
       \vtop{
           \kern\columnsep
           \hbox to \hsize{%
               \kern\columnsep%
               \advance\hsize by -2\columnsep%
               \setlength{\textwidth}{\hsize}%
               \vbox{
                   \parskip=\baselineskip
                   \parindent=0bp
                   #1
               }%
               \kern\columnsep%
           }%
           \kern\columnsep%
       }%
   }%
   \setbox\bkgdbox\vbox{
       \pdfliteral{0.85 0.85 0.85 rg}
       \hrule width  \wd\contentbox %
              height \ht\contentbox %
              depth  \dp\contentbox
       \pdfliteral{0 0 0 rg}
   }%
   \wd\bkgdbox=0bp%
   \vbox{\hbox to \hsize{\box\bkgdbox\box\contentbox}}%
   \vskip\baselineskip%
}
\renewcommand{\tt}{\ttfamily}


\newcommand{\footurl}[1]{\href{#1}{\phantom{a}}$\!\!$\footnote{\url{#1}}\href{#1}{\phantom{a}}$\!\!\!$}
