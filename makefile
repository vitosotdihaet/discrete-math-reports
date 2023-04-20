SRC=*/*.tex

all:
	for file in $(SRC); do \
		name=$${file::-4}; \
		dir=$${file%/*}; \
		pdflatex -interaction=nonstopmode $$file -output-directory=DIR; \
		rm -f $$name.aux $$name.log $$name.fdb_latexmk $$name.fls; \
	done