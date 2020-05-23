all: samenvatting.pdf

samenvatting.pdf: *.tex fylogenie.png
	./create.sh
	./view.sh

fylogenie.png:
	Rscript maak_fylogenie.R


