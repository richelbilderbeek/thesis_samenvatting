all: samenvatting.pdf

samenvatting.pdf: *.tex fylogenie.png
	./create.sh
	./view.sh

fylogenie.png: maak_fylogenie.R
	Rscript maak_fylogenie.R


