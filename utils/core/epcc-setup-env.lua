help([[
EPCC Cirrus Environment
=======================

Environment setup for Cirrus:
  * Adds to the the default MODULEPATH to make software modules available
  * Sets SBATCH_EXPORT=none to avoid login shell modules being setenv(ed to batch jobs

  Installed: 15 Sep 2026
  Installed by: Andy Turner, EPCC
]])

local softwarebase = "/work/y07/shared/cirrus-ex"
local modbase = "/epccfs/y07/shared/cirrus-ex/cirrus-ex-lmod"
setenv("EPCC_SOFTWARE_DIR", softwarebase)

-- Set default module locations (utils/core already specified in startup scripts)
prepend_path("MODULEPATH", pathJoin(modbase, "apps/core"))
prepend_path("MODULEPATH", pathJoin(modbase, "libs/core"))
-- prepend_path("MODULEPATH", pathJoin(modbase, "python/core"))
-- prepend_path("MODULEPATH", pathJoin(modbase, "python/pyenvs"))

-- Make default binaries/scripts available
prepend_path("PATH", pathJoin(softwarebase, "cirrus-ex-software/utils/core/bin"))

-- Set any env vars
setenv("FI_CXI_RX_MATCH_MODE","hybrid")
setenv("SBATCH_EXPORT","FI_CXI_RX_MATCH_MODE,SBATCH_EXPORT")
setenv("SLURM_EXPORT_ENV", "all")
setenv("EPCC_CONTAINER_DIR", pathJoin(softwarebase, "container-images"))

--- Set up the module hierarchy
prepend_path("LMOD_CUSTOM_CNCM_GNU_10_0_OFI_1_0_X86_TURIN_1_0_CRAY_MPICH_8_0_PREFIX",  pathJoin(modbase, "apps/mpi/gnu/10.0/ofi/1.0/x86-turin/1.0/cray-mpich/8.0"))
prepend_path("LMOD_CUSTOM_CNCM_CRAYCLANG_16_0_OFI_1_0_X86_TURIN_1_0_CRAY_MPICH_8_0_PREFIX",  pathJoin(modbase, "apps/mpi/crayclang/16.0/ofi/1.0/x86-turin/1.0/cray-mpich/8.0"))
prepend_path("LMOD_CUSTOM_CNCM_AOCC_4_1_OFI_1_0_X86_TURIN_1_0_CRAY_MPICH_8_0_PREFIX",  pathJoin(modbase, "apps/mpi/aocc/4.1/ofi/1.0/x86-turin/1.0/cray-mpich/8.0"))
prepend_path("LMOD_CUSTOM_CNCM_INTEL_2023_2_OFI_1_0_X86_TURIN_1_0_CRAY_MPICH_8_0_PREFIX",  pathJoin(modbase, "apps/mpi/intel/2023.2/ofi/1.0/x86-turin/1.0/cray-mpich/8.0"))

--- Load the cse env built with spack

always_load("cse_env")

--- Activate the hierarchy be re-loading the Programming Environment

if os.getenv("PE_ENV") == "GNU" then
 	load("PrgEnv-gnu")
elseif os.getenv("PE_ENV") == "CRAY" then
	load("PrgEnv-cray")
elseif os.getenv("PE_ENV") == "AOCC" then
	load("PrgEnv-aocc")
elseif os.getenv("PE_ENV") == "INTEL" then
	load("PrgEnv-intel")
end

