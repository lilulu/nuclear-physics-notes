SHELL=/bin/bash
.PHONY: all tek__all clean cleancache distclean
.SUFFIXES:
all: tek__all

.tek_cache/__all__.tex: Makefile __all__.tex
	@echo -e "TEXPP\t__all__.tex"
	@mkdir -p ".tek_cache" >& /dev/null || true
	@texpp -i "__all__.tex" -o ".tek_cache/__all__.tex"

__all__.pdf: Makefile .tek_cache/__all__.tex .tek_cache/2012-02-08.stex
	@echo -e "LATEX\t__all__.tex"
	@cd ".tek_cache" ; pdflatex -interaction=batchmode "__all__.tex" >& /dev/null || pdflatex "__all__.tex"
	@cd ".tek_cache" ; pdflatex -interaction=batchmode "__all__.tex" >& /dev/null || pdflatex "__all__.tex"
	@cp ".tek_cache/__all__.pdf" "__all__.pdf"

.tek_cache/2012-02-08.stex: Makefile .tek_cache/2012-02-08.stex-stexdeps 2012-02-08.tex
	@echo -e "STRIP\t2012-02-08.tex"
	@mkdir -p ".tek_cache" >& /dev/null || true
	@texstrip -i "2012-02-08.tex" -o ".tek_cache/2012-02-08.stex"

.tek_cache/2012-02-08.stex-stexdeps: Makefile
	@mkdir -p ".tek_cache" >& /dev/null || true
	@date > ".tek_cache/2012-02-08.stex-stexdeps"

.tek_cache/2012-02-08.tex: Makefile 2012-02-08.tex
	@echo -e "TEXPP\t2012-02-08.tex"
	@mkdir -p ".tek_cache" >& /dev/null || true
	@texpp -i "2012-02-08.tex" -o ".tek_cache/2012-02-08.tex"

2012-02-08.pdf: Makefile .tek_cache/2012-02-08.tex
	@echo -e "LATEX\t2012-02-08.tex"
	@cd ".tek_cache" ; pdflatex -interaction=batchmode "2012-02-08.tex" >& /dev/null || pdflatex "2012-02-08.tex"
	@cd ".tek_cache" ; pdflatex -interaction=batchmode "2012-02-08.tex" >& /dev/null || pdflatex "2012-02-08.tex"
	@cp ".tek_cache/2012-02-08.pdf" "2012-02-08.pdf"

tek__all: Makefile __all__.pdf 2012-02-08.pdf

cleancache: Makefile
	@rm -rf ".tek_cache" >& /dev/null || true
	@rm -rf ".tek_cache" >& /dev/null || true
	@rm -rf ".tek_cache" >& /dev/null || true

clean: Makefile cleancache
	@rm "__all__.pdf" >& /dev/null || true
	@rm "2012-02-08.pdf" >& /dev/null || true
	@rm "2012-02-08.pdf" >& /dev/null || true

distclean: Makefile clean
	@rm "Makefile" >& /dev/null || true

