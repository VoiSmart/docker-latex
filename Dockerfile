FROM quay.io/fedora/fedora:34

ENV LATEX_PKGS="texlive-accsupp \
  texlive-amsmath \
  texlive-atbegshi \
  texlive-atveryend \
  texlive-auxhook \
  texlive-babel \
  texlive-babel-english \
  texlive-bidi \
  texlive-bigintcalc \
  texlive-bitset \
  texlive-bookmark \
  texlive-breakurl \
  texlive-caption \
  texlive-colortbl \
  texlive-datatool \
  texlive-epstopdf-pkg \
  texlive-etexcmds \
  texlive-etoolbox \
  texlive-filehook \
  texlive-fp \
  texlive-gettitlestring \
  texlive-glossaries \
  texlive-glossaries-english \
  texlive-graphics \
  texlive-graphics-cfg \
  texlive-graphics-def \
  texlive-hobsub \
  texlive-hycolor \
  texlive-hyperref \
  texlive-hyphenat \
  texlive-iftex \
  texlive-infwarerr \
  texlive-intcalc \
  texlive-kvdefinekeys \
  texlive-kvoptions \
  texlive-kvsetkeys \
  texlive-l3backend \
  texlive-l3kernel \
  texlive-l3packages \
  texlive-latex \
  texlive-latexconfig \
  texlive-letltxmacro \
  texlive-listings \
  texlive-ltxcmds \
  texlive-marvosym \
  texlive-mdframed \
  texlive-memoir \
  texlive-mfirstuc \
  texlive-microtype \
  texlive-minitoc \
  texlive-ms \
  texlive-pdfescape \
  texlive-pdftexcmds \
  texlive-pgf \
  texlive-polyglossia \
  texlive-psnfss \
  texlive-refcount \
  texlive-rerunfilecheck \
  texlive-silence \
  texlive-subfig \
  texlive-substr \
  texlive-supertabular \
  texlive-tabu \
  texlive-textcase \
  texlive-tools \
  texlive-tracklang \
  texlive-translator \
  texlive-transparent \
  texlive-uniquecounter \
  texlive-url \
  texlive-varwidth \
  texlive-xcolor \
  texlive-xfor \
  texlive-xifthen \
  texlive-xkeyval \
  texlive-zref"

ENV OTHER_PKGS="dia cmake ImageMagick ImageMagick-c++ inkscape ghostscript"

RUN set -xe \
  && dnf clean all && dnf update -y

RUN set -xe \
  && dnf install -y ${LATEX_PKGS}

RUN set -xe \
  && dnf install -y ${OTHER_PKGS}

CMD ["/bin/bash"]
