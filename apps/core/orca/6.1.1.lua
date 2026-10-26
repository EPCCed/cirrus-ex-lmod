-- -*- lua -*-
--
--

whatis([[Name : ORCA]])
whatis([[Version : 6.1.1]])
whatis([[Short description : ORCA quantum chemistry software.]])
help([[Name   : ORCA]])
help([[Version: 6.1.1]])
help()

-- OpenMPI paths
local mpipath = "/epccfs/y07/shared/cirrus-ex/cirrus-ex-software/libs/compiler/gnu/12.2/openmpi/4.1.8"
prepend_path("LD_LIBRARY_PATH", pathJoin(mpipath, "lib"))
prepend_path("PATH", pathJoin(mpipath, "bin"))
prepend_path("MANPATH", pathJoin(mpipath, "share/man"))

-- libfabric paths
prepend_path("LD_LIBRARY_PATH", "/opt/cray/libfabric/1.22.0/lib")
prepend_path("LD_LIBRARY_PATH", "/opt/cray/libfabric/1.22.0/lib64")

-- OpenMPI config
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
-- prepend_path("PATH", "/work/y07/shared/cirrus-ex/cirrus-ex-software/apps/core/orca/bin")

family("orca")

