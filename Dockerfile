FROM qspack/u1604-openmpi

RUN /usr/local/src/spack/bin/spack install osu-micro-benchmarks
ENV PATH=${PATH}:/usr/local/osu-micro-benchmarks/bin
RUN mkdir -p /usr/local/osu-micro-benchmarks \
 && ln -s $(/usr/local/src/spack/bin/spack location --install-dir osu-micro-benchmarks)/bin /usr/local/osu-micro-benchmarks/bin
