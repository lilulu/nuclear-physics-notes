\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ansconf}[2014/09/25]

\LoadClass[12pt,twoside]{article}
\typeout{Loading MC2015 document class: includes [12pt,twoside]{article}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages needed
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{cite}        % texlive-latex-recommended
\RequirePackage{setspace}    % texlive-latex-recommended
\RequirePackage{indentfirst}
\RequirePackage{times}       % texlive-fonts-recommended

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% page layout stuff
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9.0in}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\hoffset}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% headers and such (fancyhdr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyhdr}    % texlive-latex-base
\RequirePackage{lastpage}    % texlive-latex-extra

\setlength{\voffset}{-46.8pt}
\setlength{\hoffset}{0.0in}
\setlength{\topmargin}{12pt}
\setlength{\headsep}{16.8pt}
\setlength{\headheight}{18pt}
\setlength{\footskip}{0.4in}

\setlength{\parindent}{0.3in}
\addtolength{\parskip}{1.0\baselineskip}

\newcommand{\authorHead}[1]{\gdef\@authorHead{#1}}
\newcommand{\shortTitle}[1]{\gdef\@shortTitle{#1}}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Header/footer for other pages
\fancyhf{}
\fancyhead[CE]{{\scriptsize \@authorHead}}
\fancyhead[CO]{{\scriptsize \@shortTitle}}
\rfoot{\small Page \thepage ~of \pageref{LastPage}}
\pagestyle{fancy}

% Header/footer for first page
\fancypagestyle{plain}{
  \fancyhf{}
  \lhead{\scriptsize{\emph{ANS MC2015 - Joint International Conference
        on Mathematics and Computation (M\!\&\!C), Supercomputing in Nuclear
        Applications (SNA) and the Monte Carlo (MC) Method} $\cdot$ Nashville,
      Tennessee $\cdot$ April 19--23, 2015, on CD-ROM, American Nuclear
      Society, LaGrange Park, IL (2015)}}
  \lfoot{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Styles for \section, \subsection, \subsubsection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[explicit]{titlesec}    % texlive-latex-extra

\titlelabel{\thetitle. }  % Add period after section number

% Set format for headings
\RequirePackage{textcase}
\titleformat{\section}{\normalsize\bfseries\centering}{\thesection}{1em}{\MakeUppercase{#1}}
\titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{0pt}{\; #1}
\titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{0pt}{\; #1}

% Set spacing for headings
\titlespacing{\section}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}
\titlespacing{\subsection}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}
\titlespacing{\subsubsection}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\footnotesize}{\fontsize{9}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10}{12pt}\selectfont}
\renewcommand{\large}{\fontsize{14}{16.8pt}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Captions for figures and tables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{caption}     % texlive-latex-recommended

\captionsetup{labelfont=bf, textfont=bf, labelsep=period}
\captionsetup[table]{skip=0pt}
\renewcommand{\thetable}{\@Roman\c@table}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title/Author/Abstract block
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{titling}     % texlive-latex-extra
\RequirePackage{authblk}     % texlive-latex-extra
\RequirePackage[style]{abstract}

\setlength{\droptitle}{-44.9pt}
\pretitle{\begin{center}\large\bfseries\MakeUppercase}
\posttitle{\end{center}}
\renewcommand{\maketitlehookb}{
  \vspace{10pt}
  \let\oldparskip\parskip
  \setlength{\parskip}{-7pt}
}

\renewcommand\Authfont{\normalsize\bfseries}
\setlength\affilsep{0pt}
\date{}

\renewcommand{\maketitlehookd}{
  \setlength{\parskip}{\oldparskip}
  \addtolength{\parskip}{1.0\baselineskip}
  \vspace{-30pt}
}

\renewcommand{\abstitlestyle}[1]{\bfseries\centering\MakeUppercase#1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bibliography
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[numbib]{tocbibind}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Appendices
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\oldappendix\appendix
\renewcommand\appendix{%
  \oldappendix
  \titleformat{\section}%
              {\normalsize\bfseries\centering}%
              {\MakeTextUppercase{\appendixname}~\thesection}%
              {1em}%
              {\MakeTextUppercase{##1}}
  \setlength{\baselineskip}{14.5pt}
}
