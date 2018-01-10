FROM qspack/u1604-openmpi

RUN /usr/local/src/spack/bin/spack install osu-micro-benchmarks
RUN echo "PATH=\${PATH}:$(/usr/local/src/spack/bin/spack location --install-dir osu-micro-benchmarks)/bin" |tee -a /etc/spack.env
