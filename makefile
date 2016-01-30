include env_make

build:
	docker run --rm -i -t -v $(shell pwd):/mkdocs nate/mkdocs
package:
	git add pages
	git commit -m $(COMMIT_MESSAGE)
	git checkout gh-pages
	rm -rf css fonts img index.html js
	mv site/* .
	rm -rf site
	git add .
	git commit -m $(COMMIT_MESSAGE)
	git checkout master
push:
	git push origin master
	git push origin gh-pages
