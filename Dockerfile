FROM quay.io/fedora/fedora:34

ENV LATEX_PKGS="\
  latex2html \
  texlive-collection-latexrecommended \
  texlive-epstopdf \
  texlive-glossaries \
  texlive-hyphenat \
  texlive-mdframed \
  texlive-silence \
  texlive-tabu \
  "

ENV OTHER_PKGS="\
  cmake \
  dia \
  ghostscript \
  ImageMagick \
  ImageMagick-c++ \
  inkscape \
  poppler-utils \
  "

RUN set -xe \
  && dnf clean all && dnf update -y

RUN set -xe \
  && dnf install -y ${LATEX_PKGS}

RUN set -xe \
  && dnf install -y ${OTHER_PKGS}

CMD ["/bin/bash"]
