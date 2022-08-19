html: clean index.md style.css
	bin/make_html.sh

clean:
	rm -rf out

watch:
	watchexec -w index.md -w style.css -- bin/make_html.sh
