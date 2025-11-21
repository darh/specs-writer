# AsciiDoc toolchain container
# - HTML export via asciidoctor
# - PDF export via asciidoctor-pdf
# - DOCX export via pandoc
# - Watch mode via entr

FROM ruby:3.3-alpine

# Install Alpine packages
RUN apk add --no-cache \
    bash coreutils findutils \
    build-base \
    ca-certificates openssl \
    graphviz \
    ttf-dejavu ttf-liberation \
    font-noto font-noto-cjk font-noto-emoji \
    imagemagick ghostscript \
    git curl unzip \
    pandoc \
    entr \
    openjdk17-jre-headless \
    plantuml

# Set locale-like env (Alpine minimal) and defaults for exports
ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    ADOC_OUT=/workspace/build \
    ADOC_SRC=/workspace \
    ADOC_REVNUMBER=1.0.0 \
    DIAGRAM_CACHE_PATH=/workspace/.diagram-cache

# Install Ruby gems for AsciiDoc
RUN gem install --no-document \
      asciidoctor \
      asciidoctor-pdf \
      rouge \
      coderay \
      asciidoctor-diagram \
      asciidoctor-diagram-plantuml

# Provide CLI wrapper via external script
COPY scripts/adoc /usr/local/bin/adoc
RUN chmod +x /usr/local/bin/adoc

WORKDIR /workspace

ENTRYPOINT ["/usr/local/bin/adoc"]
CMD ["--help"]
