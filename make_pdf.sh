if [ "$1" = "--clearcache" -o "$1" = "-cc" ]; then
    echo "Cleaning biber cache"
    rm -rf $(biber --cache)
else
    break
fi

pdflatex -synctex=1 -interaction=nonstopmode "phd-thesis".tex
biber -D "phd-thesis"
pdflatex -synctex=1 -interaction=nonstopmode "phd-thesis".tex
pdflatex -synctex=1 -interaction=nonstopmode "phd-thesis".tex
open phd-thesis.pdf