SRC=*.tex

all:
	for a in $(SRC); do \
		pdflatex -interaction=nonstopmode $$a; \
	done
	rm -f *.aux *.log *.fdb_latexmk *.fls