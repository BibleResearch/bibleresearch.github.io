help:
	@echo "upbook 		Update bible notes from https://gitlab.com/BibleResearch/bible-notes"

upbook:
	rm -rf ./static/notes/
	git clone git@gitlab.com:bible-research/bible-notes.git
	cd bible-notes/ && gitbook install && gitbook build
	cp -r bible-notes/_book/ ./static/notes/
	rm -rf bible-notes/
	rm -rf ./static/notes/tests
	rm -rf ./static/notes/.travis.yml
