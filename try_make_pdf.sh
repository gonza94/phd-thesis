if [ "$1" = "--clearcache" -o "$1" = "-cc" ]; then
    echo "Cleaning biber cache"
    rm -rf $(biber --cache)
fi

pdflatex -synctex=1 -interaction=nonstopmode phd-thesis
biber -D phd-thesis
pdflatex -synctex=1 -interaction=nonstopmode phd-thesis
pdflatex -synctex=1 -interaction=nonstopmode phd-thesis
open phd-thesis.pdf
