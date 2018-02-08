GH-PAGES = ${HOME}/dev/urubu-gh-pages/

all: build

build:
	python -m urubu build
	rm -r _build/urubu
	touch _build/.nojekyll

serve:
	python -m urubu serve

publish:
	git subtree push --prefix _build origin gh-pages
