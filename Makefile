TEXINPUTS=".:./theme//:./sty//:" # ".//:"

.DEFAULT: pdf

pdf: main.tex
	TEXINPUTS=$(TEXINPUTS) latexmk -pdf main.tex

cont: main.tex
	TEXINPUTS=$(TEXINPUTS) latexmk -pvc -pdf main.tex

clean: main.tex
	latexmk -C main.tex
	rm -f *.nav *.snm *.synctex.gz
	rm -f img/*.xbb

update:
	mkluatexfontdb -vvv

.PHONY: pdf cont clean
