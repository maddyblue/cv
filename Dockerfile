FROM debian:stretch

RUN apt-get clean && apt-get update && apt-get install -y \
	ca-certificates \
	curl \
	fontconfig \
	lmodern \
	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-xetex \
	ttf-linux-libertine \
	wget \
	--no-install-recommends

RUN curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | \
	sed 's/sudo //' > /install-font-ubuntu.sh

RUN bash /install-font-ubuntu.sh http://jorrel.googlepages.com/Monaco_Linux.ttf

# from github.com/mjibson/cv:
# docker build -t xelatex .
# docker run --rm -v $(pwd):/data xelatex xelatex -output-directory=/data /data/resume.tex
