\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClassWithOptions{school-research}
\ProvidesClass{school-research-notes}

\usepackage{school-style-researchnotes}
\usepackage{school-style-packages}


\usepackage{tikz}
\usetikzlibrary{shapes,arrows,positioning}
\usetikzlibrary{decorations.markings}
\usepackage{tikz-3dplot}
\tikzstyle arrowstyle=[scale=1]
\tikzstyle directed=[postaction={decorate,decoration={markings,
    mark=at position .65 with {\arrow[arrowstyle]{stealth}}}}]
\tikzstyle reverse directed=[postaction={decorate,decoration={markings,
    mark=at position .65 with {\arrowreversed[arrowstyle]{stealth};}}}]
\definecolor{myyellow}{RGB}{249,232,100}
\definecolor{mygrey}{RGB}{218,215,164}
\definecolor{myblue}{RGB}{135,146,160}
