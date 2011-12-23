
SWFMILL     := ./tools/swfmill/0.2.11/swfmill
MTASC       := ./tools/mtasc/1.12/mtasc

MTASCSTDLIB := ./tools/mtasc/1.12/mtasc/std
MTASCSTD8LIB := ./tools/mtasc/1.12/mtasc/std8

main:
	$(SWFMILL) simple src/jscam.xml jscam.swf
	$(MTASC) -v -swf jscam.swf -main jscam.as -version 8 -cp src -cp $(MTASCSTDLIB) -cp $(MTASCSTD8LIB)

clean:
	rm -f jscam.swf

