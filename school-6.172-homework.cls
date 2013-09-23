\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClassWithOptions{school-6.172}
\ProvidesClass{school-6.172-homework}

\usepackage{school-style-homework}

\lstdefinestyle{customc}{
  belowcaptionskip=1\baselineskip,
  breaklines=true,
  frame=L,
  xleftmargin=\parindent,
  language=C,
  showstringspaces=false,
  basicstyle=\footnotesize\ttfamily,
  keywordstyle=\bfseries\color{green!40!black},
  commentstyle=\itshape\color{purple!40!black},
  identifierstyle=\color{blue},
  stringstyle=\color{orange},
}
 \lstset{language=C,style=customc}

