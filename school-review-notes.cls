\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClassWithOptions{school-base}
\ProvidesClass{school-review-notes}

\usepackage{school-style-class}

\author{Lulu Li}

\def\date#1{\gdef\@date{#1}}

\lhead{\@author}
\chead{}
\rhead{\@classcode\ Review Notes: \@date}
\lfoot{}
\cfoot{\thepage}
\rfoot{}

\renewcommand{\maketitle}{%
  \thispagestyle{empty}
  \begin{figure}[t]
    \begin{flushright}
      \@author\ $<$\@authoremail$>$ \\
      \@date \\
    \end{flushright}
    \begin{flushleft}
      \textit{\@classcode\ Review Notes} \\
    \end{flushleft}
  \end{figure}}

\newcommand{\makecontents}{%
  \setcounter{tocdepth}{3}%
  \tableofcontents%
  \clearpage%
  \listoffigures%
  \listoftables%
  \clearpage%
  \pagestyle{fancy}}

\newcommand{\firstlecture}{}
\newcommand{\newlecture}{}
\newcommand{\exam}[1]{\textbf{#1}\\}
\newcommand{\lecture}[1]{\textbf{#1}\\}
\newcommand{\topic}[1]{\textbf{#1}\\}
\newcommand{\subtopic}[1]{\textit{#1}\\}
\newcommand{\subsubtopic}[1]{\textit{#1}\\}
\newcommand{\subsubsubtopic}[1]{\textit{#1}\\}
\newcommand{\note}[1]{\textbf{note:} #1}
\newcommand{\hi}[1]{\textbf{\textcolor{blue}{#1}}}
