paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

clean:
	# rm -f paper.pdf paper.aux paper.log plot-*.png
	find . -type f | git check-ignore --stdin | xargs rm
