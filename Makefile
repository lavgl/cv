html: index.md style.css
	pandoc index.md --standalone -c style.css -f markdown -t html -o index.html
