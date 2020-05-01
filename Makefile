all: samenvatting.pdf

samenvatting.pdf: *.tex
	./create.sh
	./view.sh

