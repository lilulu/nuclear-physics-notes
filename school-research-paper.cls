% This turns the LoadClass below into a LoadClassWithOptions
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{school-research}}
\ProcessOptions\relax

% This adds the ``twocolumn'' option to our parent class
\PassOptionsToClass{twocolumn}{school-research}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClass{school-research}
\ProvidesClass{school-research-paper}
