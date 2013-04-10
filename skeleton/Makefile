OUTPUT_PATH = build

theme:
	recess --compile build.less > ${OUTPUT_PATH}/bootstrap.css
	recess --compress build.less > ${OUTPUT_PATH}/bootstrap.min.css


default:
	-test -f ${OUTPUT_PATH}/variables.less && rm ${OUTPUT_PATH}/variables.less
	-test -f ${OUTPUT_PATH}/theme.less && rm ${OUTPUT_PATH}/theme.less
	make theme

watcher:
	ruby watcher.rb

server:
	open http://localhost:8000/test/test.html
	python -m SimpleHTTPServer

.PHONY: theme bootstrap default watcher server