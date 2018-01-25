include env_make

build:
	mkdocs build --clean
package:
	git checkout gh-pages
	/bin/cp -R site/* .
	rm -rf site
	git add .
	git commit -m $(COMMIT_MESSAGE)
	git checkout master
push:
	git push origin master
	git push origin gh-pages
publish:
	make build package push
