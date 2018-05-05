help:
	@echo "upbook 		Update bible notes from https://github.com/BibleResearch/bible-notes"

upbook:
	rm -rf public/notes/
	git clone https://github.com/BibleResearch/bible-notes.git
	cd bible-notes/ && gitbook install && gitbook build
	cp -r bible-notes/_book/ ./public/notes/
	rm -rf bible-notes/
	rm -rf ./public/notes/tests
	rm -rf ./public/notes/.travis.yml
