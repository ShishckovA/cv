FROM fedora:31

RUN dnf install -y texlive-scheme-full

COPY cv /cv

RUN chmod +x /cv/process.bash

ENTRYPOINT ["/cv/process.bash"]
