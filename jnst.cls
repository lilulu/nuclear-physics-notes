%========================== jnst.cls =============================
%
%-for Journal of Nuclear Science and Technology %
% Version 1.84
%-Released on October 2001
%-Revised on July 2003, May November 2004, January February August 2006, February 2008
%-Copyright (C) KOPAS
%-Revised September 2013 for T&F
%-Copyright (C) Atomic Energy Society of Japan
%
%=================================================================

%T&F \typeout{***** Document Class =<<<jnst.cls>>>= ver. 1.8 ******}
\typeout{***** Document Class =<<<jnst.cls>>>= ver. 1.84 ******}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
%T&F \ProvidesClass{jnst}[2008/02/14 version 1.8 JNST document class]
\ProvidesClass{jnst}[2013/09/01 version 1.84 JNST document class]
%T&F \RequirePackage[fleqn]{amsmath}[1997/03/20]
\RequirePackage{amsmath}[2013/09/20]
\RequirePackage{amssymb}
\RequirePackage{graphicx}
%\RequirePackage[tablesfirst,notablist]{endfloat}
%%\RequirePackage{pifont}
%%\RequirePackage{type1cm}
\RequirePackage[nomove]{overcite}
%T&F \def\@cite#1{\mbox{$\m@th^{\hbox{\@ove@rcfont#1)}}$}}
\def\@cite#1{[#1]}
\allowdisplaybreaks[3]
\raggedbottom
\frenchspacing

%T&F \def\@typeset{\sffamily Typeset with jnst.cls $<$ver.1.8$>$}
\def\@typeset{\sffamily Typeset with jnst.cls $<$ver.1.84$>$}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\DeclareOption{seceq}{%
\@addtoreset{equation}{section}
\renewcommand\theequation{\@arabic\c@section.\@arabic\c@equation}
}

\newif\if@rv
\DeclareOption{review}{\@rvtrue}  %% Added [06/08/30]
\newif\if@tm
\DeclareOption{techmate}{\@tmtrue}  %% Changed [06/08/30]
\newif\if@rp
\DeclareOption{rpcom}{\@rptrue}   %% Changed [06/08/30]
\newif\if@l
\DeclareOption{letter}{\@ltrue}
\newif\if@er
\DeclareOption{corrigendum}{\@ertrue}  %% Changed from Errata [13/08/12]

%%%% Math operators %%%%%
\def\Det{\mathop{\operator@font Det}\nolimits}
\def\diag{\mathop{\operator@font diag}\nolimits}
\def\sgn{\mathop{\operator@font sgn}\nolimits}
\def\sn{\mathop{\operator@font sn}\nolimits}
\def\textIm{\mathop{\operator@font Im}\nolimits}
\def\textRe{\mathop{\oprator@font Re}\nolimits}
\def\Tr{\mathop{\operator@font Tr}\nolimits}
\def\tr{\mathop{\operator@font tr}\nolimits}
\def\Trace{\mathop{\operator@ Trace}\nolimits}
%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength\lineskip{\z@}
\setlength\normallineskip{\z@}
%T&F \renewcommand\baselinestretch{1} %% [13/08/12]
\renewcommand\baselinestretch{0.9}
%T&F vertical spacing of table
\renewcommand\arraystretch{0.5}
%T&F vertical spacing of table caption
%T&F\def\tablecaption#1{\renewcommand{\baselinestretch}{0.5}\caption{#1}}
%T&F
\setlength\parskip{\z@}
\setlength\parindent{18pt}

\setlength\paperheight{297mm}
\setlength\paperwidth{210mm}
\setlength\textheight{245mm}
\setlength\textwidth{160mm}
%\setlength\oddsidemargin{-1cm}
%\setlength\evensidemargin{-1cm}
\setlength\topmargin{-1cm}
\setlength\headheight{10\p@}
\setlength\headsep{16\p@} 
\setlength\topskip{12\p@}
\setlength\footskip{24\p@}
\addtolength\textheight{\topskip}

\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {14\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\dblfloatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{10\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{10\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{0\p@}

\setlength\arraycolsep {6\p@} 
\setlength\tabcolsep {6\p@}
\setlength\arrayrulewidth {.25\p@}
\setlength\doublerulesep {2\p@}
\setlength\tabbingsep {\labelsep}
\setlength\fboxsep{3\p@} 
\setlength\fboxrule {.2\p@}
\setlength\marginparwidth {.75\p@} 
\setlength\marginparsep {12\p@}

\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\tolerance 9999
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xiipt{30}
   \abovedisplayskip 7\p@
   \abovedisplayshortskip 7\p@
   \belowdisplayshortskip 7\p@
   \belowdisplayskip \abovedisplayskip
   \setlength\jot{7\p@}
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xpt{30}%
   \abovedisplayskip 6\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \def\@listi{\leftmargin\leftmargini
               \topsep \z@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{30}%
   \abovedisplayskip 5\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \def\@listi{\leftmargin\leftmargini
               \topsep \z@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt\12\@p}
\newcommand\tiny{\@setfontsize\tiny\@viipt\@viiipt}
\newcommand\large{\@setfontsize\large\@xivpt{18}}
\newcommand\Large{\@setfontsize\Large\@xviipt{22}}
\newcommand\LARGE{\@setfontsize\LARGE\@xxpt{25}}
\newcommand\huge{\@setfontsize\huge\@xxvpt{30}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

%T&F \renewcommand\thesection {\@Roman\c@section}
\renewcommand\thesection {\@arabic\c@section}
%T&F \renewcommand\thesubsection {\@arabic\c@subsection{.}}
\renewcommand\thesubsection {\thesection.\@arabic\c@subsection{.}}
%T&F \renewcommand\thesubsubsection {(\@arabic\c@subsubsection)}
\renewcommand\thesubsubsection {\thesubsection\@arabic\c@subsubsection{.}}
%T&F \renewcommand\theparagraph {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\theparagraph {\thesubsubsection\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
%

\newcommand\@secapp{}

\newcommand\section{\@startsection{section}{1}{\z@}%
                   {1\baselineskip}{.1\baselineskip}%
                   {\normalfont\bfseries\boldmath}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                   {1\baselineskip}{.1\baselineskip}%
%T&F               {\normalfont\normalsize\bfseries\boldmath}}
                   {\normalfont\normalsize\bfseries\boldmath\itshape}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                   {1\baselineskip}{.1\baselineskip}%
%T&F               {\normalfont\normalsize\normalfont}} 
                   {\normalfont\normalsize\itshape}} 
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                   {\z@}{-1em}%
                   {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{4}{\parindent}%
                   {\z@}{-1em}%
                   {\normalfont\normalsize\itshape}}

\def\@nullstring{}
\def\@appendixstring{Appendix}

\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \def\@svsec{}\else
       \ifnum #2=1
         \refstepcounter{#1}
         \def\@appendixtitle{#8}
         \ifx\@secapp\@appendixstring
         \ifx\@appendixtitle\@nullstring
             \edef\@svsec{\@secapp \csname the#1\endcsname\hskip1em}
         \else
             \edef\@svsec{\@secapp \csname the#1\endcsname:\hskip1em}
         \fi
         \else
           \ifx\thesection\@nullstring
             \edef\@svsec{\@secapp \csname the#1\endcsname\hskip1em}
           \else
             \edef\@svsec{\@secapp \csname the#1\endcsname.\hskip1em}
           \fi
         \fi
       \else
         \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname\hskip1em}
       \fi
     \fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
        \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8\par}%
        \endgroup
       \csname #1mark\endcsname{#7}
      \else
        \def\@svsechd{#6\hskip #3\@svsec #8\csname #1mark\endcsname{#7}}
      \fi
     \@xsect{#5}}

\setcounter{secnumdepth}{3}

\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{(\theenumi)}
\newcommand\labelenumii{\theenumii.}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

\setlength\leftmargini {2.5em}
\setlength\leftmarginii {1em} 
\setlength\leftmarginiii {1em} 
\setlength\leftmarginiv {1em} 
\setlength\leftmarginv {1em}
\setlength\leftmarginvi {1em}
\setlength\leftmargin{\leftmargini}
\setlength\labelwidth{\leftmargini\advance\labelwidth-\labelsep}
\setlength\labelsep {.5em} 
\setlength\parsep {\z@}
 
\def\@listi{\leftmargin\leftmargini}
\def\@listii{\leftmargin\leftmarginii
 \labelwidth\leftmarginii\advance\labelwidth-\labelsep
 \topsep\z@ 
 \parsep\z@ 
 \itemsep \parsep}
\def\@listiii{\leftmargin\leftmarginiii
 \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
 \topsep\z@
 \parsep\z@
\partopsep\z@
 \itemsep=\z@ \topsep\z@}
\def\@listiv{\leftmargin\leftmarginiv
 \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}
\def\@listv{\leftmargin\leftmarginv
 \labelwidth\leftmarginv\advance\labelwidth-\labelsep}
\def\@listvi{\leftmargin\leftmarginvi
 \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}
 
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -15\p@%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 15\p@}%
                \item\relax}
               {\endlist}

\newenvironment{quotation}
               {\list{}{\listparindent 15\p@%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}


\def\thebibliography#1{%
\section*{\refname}
\small
%T&F \list{\arabic{enumi})}{\settowidth\labelwidth{[#1]}
\list{[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}
 \leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \sloppy
 \sfcode`\.=500\relax}
\let\endthebibliography=\endlist

%T&F \def\footnoterule{\noindent\vskip1\baselineskip \kern-3\p@
%T&F  \hrule width \textwidth
\def\footnoterule{\noindent\vskip1\baselineskip \kern-3\p@
 \hrule width 40mm
 \kern 2.6\p@}
 
\def\symbolfootnotes{\setcounter{footnote}{0}%
\def\thefootnote{\fnsymbol{footnote}}}

%\gdef\@thanks{}\symbolfootnotes

\def\@thefootnote{\@alph\c@footnote}
\long\def\@makefntext#1{\vskip3\p@ \hsize=\textwidth \par
\noindent
\footnotesize \hskip6\p@\@textsuperscript{\normalfont\@thefootnote}\hskip1\p@#1\vskip-3\p@}
\def\@makefnmark{\hskip-1\p@{\@textsuperscript{\normalfont\@thefootnote}}}

%T&F \newcommand\abstname{Abstract}
%T&F \newcommand\abstname{KEYWORDS}
\newcommand\kwordname{Keywords}
\newcommand\abbrevname{Abbreviations}
\newcommand\pacsname{PACS}
\newcommand\refname{References}
%T&F \newcommand\figurename{Fig.}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\schemename{Scheme}
\newcommand\photoname{Photo}
\newcommand\appendixname{Appendix}

\newcommand\@pnumwidth{3em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}

\newcommand\listoffigures{%
    \section*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    }
%\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newdimen\@lnumwidth
%T&F \def\numberline#1{\hbox to\@lnumwidth{\textbf{Fig.{\space}#1.}\hfil}}
\def\numberline#1{\hbox to\@lnumwidth{\textbf{Figure{\space}#1}\hfil}}
\newcommand*{\l@figure}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \addvspace{.5\baselineskip}%
    \begingroup
      \parindent\z@ \rightskip\@pnumwidth \parfillskip-\rightskip
      \leavevmode
%T&F  \setlength\@lnumwidth{4em}%
      \setlength\@lnumwidth{5em}%
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\par %\hbox to\@pnumwidth{\hss#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\newcommand\listoftables{%
    \section*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure

\newcommand\listfigurename{Figure Captions}
\newcommand\listtablename{List of Tables}

\newenvironment{figure}
               {\@float{figure}}
               {\end@float}

\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

\newenvironment{table}
               {\@float{table}}
               {\end@float}

\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\newenvironment{scheme}
               {\@float{scheme}}
               {\end@float}

\newenvironment{scheme*}
               {\@dblfloat{scheme}}
               {\end@dblfloat}

\newenvironment{photo}
               {\@float{photo}}
               {\end@float}

\newenvironment{photo*}
               {\@dblfloat{photo}}
               {\end@dblfloat}

\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{1em}
\setlength\belowcaptionskip{1em}
\long\def\@makecaption#1#2{%
  \small
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\textbf{#1}\hskip.5em#2}%
  \ifdim \wd\@tempboxa >\hsize
  \hangindent2em\hangafter1\noindent
    \textbf{#1}\hskip.5em#2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%\long\def\@caption#1[#2]#3{\par
%     \begingroup
%     \@parboxrestore
%     \@makecaption{\csname fnum@#1\endcsname}{\hskip.5em#3}  %{\ignorespaces #3}
%     \par
%     \endgroup
%}

\newcounter{figure}
\def\thecaption{\@arabic\c@figure}
\def\fps@figure{tbhp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\hskip.5em\thefigure}
\newcounter{table}
\def\thecaption{\@arabic\c@table}
\def\fps@table{tbhp}
\def\ftype@table{2} 
\def\ext@table{lot}
\def\fnum@table{\tablename\hskip.5em\thetable}
\newcounter{scheme}
\def\thecaption{\@arabic\c@scheme}
\def\fps@scheme{tbhp}
\def\ftype@scheme{3}
\def\fnum@scheme{\schemename\hskip.5em\thescheme}
\newcounter{photo}
\def\thecaption{\@arabic\c@photo}
\def\fps@photo{tbhp}
\def\ftype@photo{4}
\def\fnum@photo{\photoname\hskip.5em\thephoto}

%\def\maketitle{\par
% \begingroup
% \def\@thefootnote{\@fnsymbol\c@footnote}
%\def\symbolfootnotes{\setcounter{footnote}{0}%
%    \gdef\thefootnote{\@fnsymbol\c@footnote}}
%\gdef\@thanks{}\symbolfootnotes
%%
%
% \if@twocolumn
% \twocolumn[\@maketitle]
% \else %\newpage
% \global\@topnum\z@ \@maketitle \fi\thispagestyle{jnst}\@thanks
% \endgroup
% \setcounter{footnote}{0}
% \let\maketitle\relax
% \let\@maketitle\relax
% \gdef\@thanks{}\gdef\@author{}\gdef\@inst{}\gdef\@title{}\let\@thanks\relax}

\def\maketitle{\par
\begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\hskip1\p@%\rlap{
	\@textsuperscript{\normalfont\@thefnmark}} %}%
    \long\def\@makefntext##1{%\vskip2\p@ 
	        \hangindent8\p@ \hangafter1 \noindent
            \hb@xt@1em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
 \if@twocolumn
   \twocolumn[\@maketitle]
 \else
   \global\@topnum\z@ 
 \@maketitle 
 \fi
\thispagestyle{jnst}\@thanks
\endgroup
 \setcounter{footnote}{0}
 \global\let\thanks\relax
 \global\let\maketitle\relax
 \global\let\@maketitle\relax
 \global\let\@thanks\@empty
 \global\let\@author\@empty
 \global\let\@title\@empty
 \global\let\title\relax
 \global\let\author\relax
}

\def\@maketitle{%
\null
\begingroup
\centering
{\bfseries\boldmath\noindent\@title \par} 
\vskip.5\baselineskip
{\noindent\@author \par}
\vskip.5\baselineskip
{\small\itshape\noindent\@inst \par}
\endgroup
\vskip.5\baselineskip
\@ifundefined{@recdate}{}{\par\noindent\small\textbf{Received:}\hskip1em\@recdate}
\@ifundefined{@revdate}{}{\par\noindent\small\textbf{Revised:}\hskip1em\@revdate}
\@ifundefined{@accdate}{}{\par\noindent\small\textbf{Accepted:}\hskip1em\@accdate}
\gdef\@recdate{}
\gdef\@revdate{}
\gdef\@accdate{}
%
\par
\vskip1\baselineskip
 \@ifundefined{@abst}{}{%
%T&F {\centerline{\small\textbf{\abstname}} \par \vskip.5\baselineskip \indent \@abst \par}
  {\vskip.5\baselineskip \noindent \@abst \par}
  \gdef\@abst{}
  }
\par
 \vskip1\baselineskip
 \@ifundefined{@kword}{}{%
 \noindent\small\textbf{\itshape\kwordname:\ \@kword \gdef\@kword{}}
  }
%\thispagestyle{jnst} %% Added [06/01/17]
%\clearpage %% Added [06/01/17]
%\pagenumbering{arabic} %% Added [06/01/17]
\par
 \vskip.5\baselineskip
 \@ifundefined{@pacs}{}{%
 {\noindent\small\textbf{\pacsname:} \par \vskip.5\baselineskip \noindent \@pacs \par}
  \gdef\@pacs{}
  }
\par
 \vskip.5\baselineskip
 \@ifundefined{@abbrev}{}{%
 {\noindent\small\textbf{\abbrevname:} \par \vskip.5\baselineskip \noindent \@abbrev \par}
  \gdef\@abbrev{}
  }
 %\par \vskip1\baselineskip
 %\clearpage
}

\long\def\abst#1{\long\gdef\@abst{#1}}
\long\def\inst#1{\long\gdef\@inst{#1}}
\long\def\kword#1{\long\gdef\@kword{#1}}
\long\def\pacs#1{\long\gdef\@pacs{#1}}
\long\def\abbrev#1{\long\gdef\@abbrev{#1}}
%
\def\recdate#1{\gdef\@recdate{#1}}
\def\revdate#1{\gdef\@revdate{#1}}
\def\accdate#1{\gdef\@accdate{#1}}

\newcommand{\name}{\relax}
\newcommand{\address}{\relax}

\AtBeginDocument{\clearpage}
%T&F \AtBeginDocument{\addtocounter{page}{-1}}

%%%%%%Definition of headings%%%%%%
\mark{{}{}}

\def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{\hfill\footnotesize\thepage\hfill}
\let\@evenfoot\@oddfoot
\def\@evenhead{%
  \hbox to \textwidth{\footnotesize%
  \textsf{{\bfseries J. Nucl. Sci. \& Technol.}
  \hfill%
  \if@rv Review %% Changed [06/08/30]
  \else
  \if@tm Technical Material %% Changed [06/08/30]
  \else
  \if@rp Rapid Communication %% Changed [06/08/30]
  \else
  \if@l Letter to the Editor
  \else
  \if@er Corrigendum %% Changed from Errata[13/08/12]
  \else
  Article %% Changed [06/08/30]
%  Original Paper
  \fi \fi \fi \fi \fi}}
  } 
\let\@oddhead\@evenhead
}

\def\ps@jnst{%
  \let\@mkboth\@gobbletwo%
%T&F \def\@evenfoot{\null}%{\small\hfill{\thepage}\hfill}
  \def\@evenfoot{\small\hfill{\thepage}\hfill}
  \let\@oddfoot\@evenfoot
  \def\@evenhead{%
%  \hbox to \textwidth{%
  \vbox{\rule[4pt]{5cm}{1pt}\par
  \hbox to 5cm{\hss\textsf{\bfseries%
  \if@rv REVIEW %% Changed [06/08/30]
  \else
  \if@tm TECHNICAL MATERIAL %% Changed [06/08/30]
  \else
  \if@rp RAPID COMMUNICATION %% Changed [06/08/30]
  \else
  \if@l LETTER TO THE EDITOR
  \else
  \if@er CORRIGENDUM %% Changed from ERRATA[13/08/12]
  \else
  ARTICLE %% Changed [06/08/18]
%  ORIGINAL PAPER %% Changed [06/02/01]
  \fi \fi \fi \fi \fi
  }\hss}\par\noindent\rule[-4pt]{5cm}{1pt}}
  \hss
  \textsf{\small\@typeset}
%}
  }
  \let\@oddhead\@evenhead
}

\def\today{\ifcase\month\or
 January\or February\or March\or April\or May\or June\or
 July\or August\or September\or October\or November\or December\fi
 \space\number\day, \number\year}

\def\mbi#1{\boldsymbol{#1}}

\pagenumbering{arabic} \onecolumn

\def\sloppy{\tolerance=9999
\hfuzz=.5\p@ \vfuzz=.5\p@}

\def\acknowledgment{\par
 \setcounter{section}{0}
 \def\@secapp{Acknowledgment}
 \def\thesection{}
 \section{}
}

\def\acknowledgments{\par
 \setcounter{section}{0}
 \def\@secapp{Acknowledgments}
 \def\thesection{}
 \section{}
}
\def\acknowledgement{\par
 \setcounter{section}{0}
 \def\@secapp{Acknowledgement}
 \def\thesection{}
 \section{}
}

\def\acknowledgements{\par
 \setcounter{section}{0}
 \def\@secapp{Acknowledgements}
 \def\thesection{}
 \section{}
}

%%%%%% Appendix %%%%%%

\newcount\@appendixflag
\@appendixflag=0
\newcount\@appendixindex
\@appendixindex=0

\def\getappendix#1{\global\@namedef{appnedix@#1}{1}}
\def\appendix{\par
\renewcommand{\section}[1]{\sectiona{##1}}
}

\def\sectiona{
 \c@table=0
 \c@figure=0
 \setcounter{equation}{0}
 \ifnum \@appendixflag=0
   \setcounter{section}{0} \@appendixflag=1
   \def\@secapp{Appendix}
   \def\thetable{\Alph{section}$\cdot$\@arabic\c@table}%
   \def\thefigure{\Alph{section}$\cdot$\@arabic\c@figure}
   \def\theequation{\Alph{section}\raise.5ex\hbox{.}\arabic{equation}}
 \fi

 \@ifundefined {appnedix@1}{\def\thesection{}}
   {\def\thesection{\ \Alph{section}}}

 \def\thesubsection {\Alph{section}.\arabic{subsection}}
 \if@filesw \immediate\write\@auxout
       {\string\getappendix{\the\@appendixindex}}
 \advance \@appendixindex by 1 \fi
\@startsection{section}{1}{\z@}%
{1\baselineskip}{.5\baselineskip}{\normalsize\bfseries\boldmath}}

\ProcessOptions\relax

\pagestyle{headings}
\endinput
%% End of file `jnst.cls'.
