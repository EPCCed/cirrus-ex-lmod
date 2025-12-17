help([[
xthi
====

]])

local modbase = os.getenv("EPCC_SOFTWARE_DIR") or "/work/y07/shared"

local xthi_root = pathJoin(modbase, "cirrus-ex-software/apps/mpi/intel/2023.2/ofi/1.0/x86-turin/1.0/cray-mpich/8.0/xthi/1.0")

prepend_path("PATH", pathJoin(xthi_root, "bin"))

family("xthi")

