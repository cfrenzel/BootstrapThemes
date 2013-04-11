OUTPUT_PATH = bootstrap/css

theme:
	recess --compile build.less > ${OUTPUT_PATH}/bootstrap.css
	recess --compress build.less > ${OUTPUT_PATH}/bootstrap.min.css

init: 
	cd src/bootstrap; npm install
	cd src/bootstrap; make bootstrap
	mkdir -p bootstrap;
	cp -r src/bootstrap/bootstrap .;
	
default:
	-test -f ${OUTPUT_PATH}/variables.less && rm ${OUTPUT_PATH}/variables.less
	-test -f ${OUTPUT_PATH}/theme.less && rm ${OUTPUT_PATH}/theme.less
	make theme

watcher:
	ruby watcher.rb

server:
	open http://localhost:8000/test.html
	python -m SimpleHTTPServer
	
clean:
	rm -rf bootstrap;
	cd src/bootstrap; make clean
	
.PHONY: theme default watcher server
	
	