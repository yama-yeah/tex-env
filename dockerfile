FROM node:latest

WORKDIR /root
# ENV TEXTLINT_VERSION=12.1.0
RUN npm install -g textlint \
    textlint-rule-preset-ja-technical-writing \
    @proofdict/textlint-rule-proofdict \
    technical-word-rules \
    textlint-filter-rule-allowlist \
    textlint-filter-rule-comments \
    textlint-plugin-latex2e \
    textlint-rule-preset-ja-spacing \
    textlint-rule-preset-ja-technical-writing \
    textlint-rule-preset-japanese \
    textlint-rule-preset-jtf-style \
    textlint-rule-prh \
    textlint-rule-spellcheck-tech-word\
    textlint-rule-no-mix-dearu-desumasu &&\
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install texlive-lang-japanese texlive-luatex texlive-latex-recommended -y &&\
    apt-get install latexmk -y &&\
    apt-get install texlive-bibtex-extra biber -y &&\
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* &&\
    apt-get install python3 git -y
ENV PATH $PATH:/tex-tool/
RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen ja_JP.UTF-8 texlive-latex-extra
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8
COPY package.json /package.json
COPY .textlintrc.json /.textlintrc.json
COPY prh.yml /prh.yml