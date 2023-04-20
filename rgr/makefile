SRC=*.tex

all:
	for a in $(SRC); do \
		name=$${a::-4}; \
		pdflatex -interaction=nonstopmode $$a; \
		rm -f $$name.aux $$name.log; \
	done