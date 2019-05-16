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

COPY Monaco_Linux.ttf /usr/share/fonts/truetype/custom/
RUN fc-cache -f -v

# from github.com/mjibson/cv:
# docker build -t xelatex .
# docker run --rm -v $(pwd):/data xelatex xelatex -output-directory=/data /data/resume.tex
