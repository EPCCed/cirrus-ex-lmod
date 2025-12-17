-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2025-12-16 16:25:20.820283
--
-- openmpi@4.1.8+atomics~cuda~cxx~cxx_exceptions~debug+fortran~gpfs~internal-hwloc~internal-libevent~internal-pmix~ipv6~java~legacylaunchers~lustre~memchecker~openshmem~orterunprefix~pmi~rocm+romio+rsh~singularity~static~two_level_namespace+vt+wrapper-rpath build_system=autotools fabrics:=cma,ofi patches:=38529b5 romio-filesystem:=none schedulers:=slurm arch=linux-rhel9-zen5/3e7opfk
--

whatis([[Name : ORCA]])
whatis([[Version : 6.1.1]])
whatis([[Short description : ORCA quantum chemistry software.]])
help([[Name   : ORCA]])
help([[Version: 6.1.1]])
help()

-- OpenMPI paths
prepend_path("LD_LIBRARY_PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/lib", ":")
prepend_path("PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin", ":")
prepend_path("MANPATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/.", ":")
prepend_path("LD_LIBRARY_PATH", "/opt/cray/libfabric/1.22.0/lib", ":")
prepend_path("LD_LIBRARY_PATH", "/opt/cray/libfabric/1.22.0/lib64", ":")
append_path("MANPATH", "", ":")

-- OpenMPI config
setenv("MPICC", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpicc")
setenv("MPICXX", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpic++")
setenv("MPIF77", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpif77")
setenv("MPIF90", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpif90")
setenv("MPIFC", "/mnt/lustre/e1000/home/y07/shared/cirrus-ex/cirrus-ex-software/spack-cirrus-ex/0.2/cirrus-ex-openmpi/opt/linux-rhel9-zen5/gcc-14.2/openmpi-4.1.8-3e7opfkp6rw24gq6rt6umujnus3qo3hy/bin/mpifort")
setenv("PMIX_MCA_psec","native")
setenv("PMIX_MCA_gds","^shmem2")
setenv("OMPI_MCA_pml","ob1")
setenv("OMPI_MCA_btl","self,vader,ofi")
setenv("FI_PROVIDER","cxi")
setenv("OMPI_MCA_btl_ofi_mode","2")
setenv("FI_CXI_RX_MATCH_MODE","software")

-- ORCA setup
setenv("ORCADIR", "/work/y07/shared/cirrus-ex/cirrus-ex-software/apps/core/orca/6.1.1")
prepend_path("PATH", "/work/y07/shared/cirrus-ex/cirrus-ex-software/apps/core/orca/6.1.1")
prepend_path("PATH", "/work/y07/shared/cirrus-ex/cirrus-ex-software/apps/core/orca/bin")

family("orca")

