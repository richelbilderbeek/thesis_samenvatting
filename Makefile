all: samenvatting.pdf

dutch: samenvatting.txt

samenvatting.txt: *.tex fylogenie.png
	detex samenvatting.tex | sed 's/;//g' > samenvatting.txt

samenvatting.pdf: *.tex fylogenie.png
	./create.sh
	#./view.sh

fylogenie.png: maak_fylogenie.R
	Rscript maak_fylogenie.R

clean:
	rm -f *.txt
