server:
	hugo server -D

build:
	hugo

deploy: build
	git commit -m 'Rebuild' public
	./node_modules/.bin/netlify deploy

.PHONY: server build
