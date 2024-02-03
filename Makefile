all: clean resume

resume:
	rm -rf ./aux
	rm -f public/resume.pdf
	rm -f public/embed-resume.html
	rm -f public/resume.html
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./public/resume.pdf
	PDF='resume.pdf' j2 templates/index.html.j2 > public/resume.html
	PDF='resume.pdf' j2 templates/embed.html.j2 > public/embed-resume.html

open:
	@if [ -f "resume.pdf" ]; then\
		xdg-open resume.pdf || open resume.pdf || explorer.exe resume.pdf;\
	fi

clean:
	@rm -rf ./aux
	@rm -f ./public/*.pdf
	@rm -f ./public/*.html