all:
	pdflatex main.tex && xdg-open main.pdf

clean:
	find . -type f | egrep \
	'\.(acn|acr|alg|aux|bbl|blg|fdb_latexmk|fls|ist|lof|log|lot|pdf|slg|slo|sls|syg|syi|synctex.gz|tdo|toc)' \
	| xargs rm

.PHONY: *
