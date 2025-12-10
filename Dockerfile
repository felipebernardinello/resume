FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -qy --no-install-recommends \
    \
    texlive-luatex \
    texlive-latex-recommended \
    texlive-latex-extra \
    \
    fonts-texgyre \
    \
    fontconfig \
    \
    && \
    fc-cache -fsv && \
    \
    luaotfload-tool --update --force && \
    \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]

CMD ["lualatex", "bearsume.tex"]