-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2025-12-16 16:25:20.820283
--
-- openmpi@4.1.8+atomics~cuda~cxx~cxx_exceptions~debug+fortran~gpfs~internal-hwloc~internal-libevent~internal-pmix~ipv6~java~legacylaunchers~lustre~memchecker~openshmem~orterunprefix~pmi~rocm+romio+rsh~singularity~static~two_level_namespace+vt+wrapper-rpath build_system=autotools fabrics:=cma,ofi patches:=38529b5 romio-filesystem:=none schedulers:=slurm arch=linux-rhel9-zen5/3e7opfk
--

whatis([[Name : openmpi]])
whatis([[Version : 4.1.8]])
whatis([[Target : zen5]])
whatis([[Short description : An open source Message Passing Interface implementation.]])
whatis([[Configure options : --enable-shared --disable-silent-rules --disable-sphinx --enable-builtin-atomics --without-pmi --disable-static --enable-mpi1-compatibility --without-xpmem --without-ucc --with-cma --without-psm2 --without-hcoll --without-verbs --without-mxm --without-fca --with-ofi=/opt/cray/libfabric/1.22.0 --without-knem --without-psm --without-ucx --without-cray-xpmem --without-sge --without-tm --without-loadleveler --without-alps --with-slurm --without-lsf --disable-memchecker --with-libevent=/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/libevent-2.1.12-zykzkynm2nkmlhrlem36v7hecvvn4jdu --with-pmix=/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/pmix-5.0.5-vzr4zrdlzatxir6g472m6caidj43vbwe --with-zlib=/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/zlib-ng-2.2.4-ka344sqs4ua2cl63buucjxkz7bvqbyjx --with-hwloc=/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/hwloc-2.11.1-5r4m3issd6isc4rabbzzxrnjt2bl5ezn --disable-java --disable-mpi-java --with-gpfs=no --without-cuda --enable-wrapper-rpath --disable-wrapper-runpath --disable-mpi-cxx --disable-cxx-exceptions --enable-mpi-fortran --disable-debug]])

help([[Name   : openmpi]])
help([[Version: 4.1.8]])
help([[Target : zen5]])
help()
help([[An open source Message Passing Interface implementation. The Open MPI
Project is an open source Message Passing Interface implementation that
is developed and maintained by a consortium of academic, research, and
industry partners. Open MPI is therefore able to combine the expertise,
technologies, and resources from all across the High Performance
Computing community in order to build the best MPI library available.
Open MPI offers advantages for system and software vendors, application
developers and computer science researchers.]])


prepend_path("LD_LIBRARY_PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/lib", ":")
prepend_path("PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin", ":")
prepend_path("MANPATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/.", ":")
prepend_path("LD_LIBRARY_PATH", "/opt/cray/libfabric/1.22.0/lib", ":")
prepend_path("LD_LIBRARY_PATH", "/opt/cray/libfabric/1.22.0/lib64", ":")
setenv("MPICC", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpicc")
setenv("MPICXX", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpic++")
setenv("MPIF77", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpif77")
setenv("MPIF90", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpif90")
setenv("MPIFC", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpifort")
append_path("MANPATH", "", ":")

