
# The scripts — such as lilypond-book, convert-ly, abc2ly, and even lilypond itself — are included inside the
# .app file for MacOS X. Scripts can also be run from the command line by invoking them directly:
# path/to/LilyPond.app/Contents/Resources/bin/lilypond
# The same is true for all other scripts in that directory, such as lilypond-book and convert-ly.


COMPILE=/Applications/LilyPond.app/Contents/Resources/bin/lilypond --output=src/
FMT=pdf
BbSrc=Bb.ly
FSrc=F.ly
ConcertSrc=concert.ly

png: FMT=png
png: concert Bb F
	open build/*.png

concert: src/$(ConcertSrc)
	$(COMPILE) --format=$(FMT) src/$(ConcertSrc)
	find src/ -name "*.$(FMT)" -exec mv "{}" build \;

Bb: src/$(BbSrc)
	$(COMPILE) --format=$(FMT) src/$(BbSrc)
	find src/ -name "*.$(FMT)" -exec mv "{}" build \;

F: src/$(FSrc)
	$(COMPILE) --format=$(FMT) src/$(FSrc)
	find src/ -name "*.$(FMT)" -exec mv "{}" build \;

view:
	open build/*.pdf

all: concert Bb F view

