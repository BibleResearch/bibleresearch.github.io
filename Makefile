help:
	@echo "upbook 		Update bible notes from https://github.com/BibleResearch/bible-notes"

upbook:
	rm -rf notes/
	git clone https://github.com/BibleResearch/bible-notes.git
	cd bible-notes/ && gitbook install && gitbook build
	cp -r bible-notes/_book/ ./notes/
	rm -rf bible-notes/
	rm -rf ./notes/tests
	rm -rf ./notes/.travis.yml
