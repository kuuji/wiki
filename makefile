include env_make

build:
	docker run --rm -i -t -v $(shell pwd):/mkdocs nate/mkdocs
package:
	git add pages
	git commit -m $(COMMIT_MESSAGE)
	git checkout gh-pages
