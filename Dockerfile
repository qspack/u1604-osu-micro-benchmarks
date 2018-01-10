FROM qspack/u1604-openmpi

RUN /usr/local/src/spack/bin/spack install osu-micro-benchmarks
