SRC=*/*.tex

all:
	for file in $(SRC); do \
		name=$${file::-4}; \
		dir=$${file%/*}; \
		pdflatex -interaction=nonstopmode $$file -output-directory=$$dir; \
		rm -f $$name.aux $$name.log $$name.fdb_latexmk $$name.fls $$name.synctex.gz; \
	done