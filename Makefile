PKG     := beamertheme-fhs
ZIP     := $(PKG).zip
BUILD   := build
DOC_TEX := $(PKG)-doc.tex
DOC_PDF := $(DOC_TEX:.tex=.pdf)

LATEXMK := latexmk -pdf -interaction=nonstopmode -halt-on-error

FILES := beamercolorthemefhs.sty beamerfontthemefhs.sty \
         beamerinnerthemefhs.sty beamerouterthemefhs.sty \
         beamerthemefhs.sty \
         $(DOC_PDF) $(DOC_TEX)

.PHONY: all zip doc clean distclean

all: zip

zip: doc $(ZIP)

doc: $(DOC_PDF)

package: 

$(ZIP): $(FILES)
	rm -rf $(BUILD) $(ZIP)
	mkdir -p $(BUILD)/$(PKG)
	cp $(FILES) $(BUILD)/$(PKG)/
	cd $(BUILD) && zip -r ../$(ZIP) $(PKG)
	rm -rf $(BUILD)

$(DOC_PDF): $(DOC_TEX)
	$(LATEXMK) $(DOC_TEX)

clean:
	latexmk -c $(DOC_TEX)

distclean: clean
	latexmk -C $(DOC_TEX)
	rm -f $(ZIP)
