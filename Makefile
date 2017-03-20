#
#

SRCS=$(wildcard *.tex)

IMGS=$(wildcard images/*.pdf images/*.png)

FN=$(wildcard LDM*.tex)
OBJ=$(FN:.tex=.pdf)

all: $(OBJ)

$(OBJ) : $(SRCS) $(IMGS)
	latexmk -bibtex -pdf -f  $(FN)

clean :
	latexmk -c

acronyms :
	acronyms.csh LDM-512.tex process.tex jira.tex
