
.PHONY: less


server:
	rails s

less:
	lessc public/less/personas.less public/stylesheets/personas-ead.css --clean-css

css: less

dist: 
	less
	cp -R bower_components/pyxis/fonts public/