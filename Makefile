
.PHONY: less


server:
	rails s

less:
	lessc public/less/personas.less public/stylesheets/personas.css --clean-css

css: less

dist: 
	cp -R bower_components/pyxis/fonts public/
	cp -R bower_components/pyxis/img public/images
	cp -R bower_components/bootstrap/dist/js public/javascripts
	cp bower_components/jquery/jquery.min.js public/javascripts