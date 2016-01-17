filename=thesis

all:
	pdflatex --shell-escape ${filename}
	bibtex ${filename}
	pdflatex --shell-escape ${filename}
	pdflatex --shell-escape ${filename}

read:
	evince ${filename}.pdf &

clean:
	rm -f ${filename}.{blg,bbl,out,aux,toc,lot,lof,pdf,log} &

