help([[
Sets up the paths for Intel Math Kernel Library
]])

conflict("cray-libsci")

local mkl_root = "/opt/intel/oneapi/mkl/2025.0"

setenv("MKLROOT", mkl_root)

prepend_path("LD_LIBRARY_PATH", pathJoin(mkl_root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(mkl_root, "lib"))
prepend_path("FPATH", pathJoin(mkl_root, "include"))
prepend_path("CPATH", pathJoin(mkl_root, "include"))
prepend_path("NLSPATH", pathJoin(mkl_root, "lib"))

family("mkl")
