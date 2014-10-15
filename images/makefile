all: tex

tex:
	latex --shell-escape figures.tex

pdf:
	pdflatex data.tex

eps:
	pdftops -eps data.pdf
