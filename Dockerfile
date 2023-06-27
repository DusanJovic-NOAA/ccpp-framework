FROM fedora:37

RUN dnf -y update && \
    dnf -y install cmake gcc-g++ gcc-fortran make git && \
    dnf clean all

RUN python3 -m venv ./ccpp-env && \
    source ./ccpp-env/bin/activate && \
    pip3 install pytest black flake8 pylint

COPY . /ccpp/

CMD ["/bin/bash"]