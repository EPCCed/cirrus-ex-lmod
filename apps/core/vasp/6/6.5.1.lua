help([[
VASP 6.5.1
==========

This module sets up your environment to access VASP 6.5.1. This
version has been compiled with libBEEF, libXC, HDF5 and Wannier90
support.

Once this module has been loaded you can access the VASP 6.5.1
executables as:

 *'vasp_std'       - Multiple k-point (complex) version
 *'vasp_gam'       - Gamma-point only version
 *'vasp_ncl'       - Multiple k-point, noncollinear version

If you are only interested in the gamma-point, the
gamma-point version of the code runs about 30-50%
faster than the complex code.

For access to VASP, please request access through
SAFE. see:

  * https://epcced.github.io/safe-docs/safe-for-users/#how-to-request-access-to-a-package-group

   Installed: 5 Nov 2025
   Maintained by: A. R. Turner, EPCC
]])

local modbase = os.getenv("EPCC_SOFTWARE_DIR") or "/work/y07/shared"

local pkgNameVer = myModuleFullName()
local base = pathJoin(modbase, "cirrus-ex-software/apps/core")

local pkgName = myModuleName()
local pkgNameVer = myModuleFullName()
local pkgNameBase = pathJoin(base, pkgName)
local pkgVersionBase = pathJoin(base, pkgNameVer)

load("PrgEnv-gnu")
load("cray-fftw")
load("cray-hdf5-parallel")
load("libxc")
load("wannier90")
prepend_path("LD_LIBRARY_PATH", os.getenv("CRAY_LD_LIBRARY_PATH"))

prepend_path("PATH", pathJoin(pkgVersionBase, "bin"))
setenv("VASP", pkgVersionBase)

setenv("VASP_VDW_KERNEL", pathJoin(pkgVersionBase, "vdw_kernel"))
setenv("VASP_PSPOT_DIR", pathJoin(pkgNameBase, "6/potpaw"))

family("vasp")


