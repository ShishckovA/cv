FROM fedora:31

RUN dnf install -y texlive-scheme-full

COPY tex_data /cv
COPY process.bash /process.bash

RUN chmod ugo+x /process.bash

ENTRYPOINT ["/process.bash"]
