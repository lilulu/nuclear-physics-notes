Copyright 2011,2012,2013,2014 Lulu Li <lululi@mit.com>, Palmer Dabbelt <palmer@dabbelt.com>

latex-style: latex style sheets defining shortcut terms for physics and nuclear engineering; page style setup for notes, homeworks etc 

Examples of notes, homeworks and exam solutions written using these styles can be found at www.mit.edu/~lululi under "Lecture Notes" Section.

The most useful files are the following: 
1. Defining common engineering and science shortcuts: 
    * school-style-derivitives.sty: shorthands for common derivatives in physics and nuclear engineering;
    * school-style-math.sty: shorthands for common terms in physics and nuclear engineering; 
    * school-style-units.sty: shorthands for common units 

2. Defining page styles for applications like lecture notes, homeworks, exams, and thesis: 
    * school-style-classnotes.sty: lecture notes;
    * school-style-homework.sty: homeworks;
    * school-style-researchnotes.sty: plain style for research notes; 
    * school-style-exam.sty: exam solutions;
    * mitthesis.cls: MIT thesis style for course 22 MS thesis

3. Setting up styles for a class: I typically define the following three .cls files:
    * school-classcode.cls: defines basic class info like class code number, name, professor name, school. 
    * school-classcode-notes.cls: calls school-classcode.cls and school-style-classnotes.sty 
    * school-classcode-homework.cls: calls school-classcode.cls and school-style-homework.sty 


