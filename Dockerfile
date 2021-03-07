FROM fedora:31

RUN dnf install -yqq texlive-scheme-full

COPY cv /cv

RUN chmod +x /cv/process.bash

ENTRYPOINT ["/cv/process.bash"]
