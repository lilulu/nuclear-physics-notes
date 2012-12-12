%
% This is the final super-class for all school-* related LaTeX classes, and as
% such it probably shouldn't be modified particularly often.
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClassWithOptions{article}
\ProvidesClass{school-base}
\usepackage{school-style-packages}

% Personal information (about the author) is stored here
\def\author#1{\gdef\@author{#1}}
\def\authoremail#1{\gdef\@authoremail{#1}}
\usepackage{school-base-personal}

% By default, headers/footers are empty
\usepackage{fancyhdr}
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}

% Formatting
\paperheight=11in
\paperwidth=8.5in
\textwidth = 6.25in
\textheight = 8.5in
\hoffset = -1in
\voffset = -0.5in
\oddsidemargin = 1.125in
\evensidemargin = 1.125in
