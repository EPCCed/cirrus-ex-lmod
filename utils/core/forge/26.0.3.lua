help([[
forge 25.1
==========

See https://docs.cirrus.ac.uk/software-tools/forge/
Installed by: kevin@epcc.ed.ac.uk (6th Octover 2026)

]])


local modbase = "/epccfs/y07/shared/cirrus-ex"

local pkgNameVer = myModuleFullName()
local pkgRoot    = pathJoin(modbase, "cirrus-ex-software/utils/core", pkgNameVer)

local userHome = os.getenv("HOME")
local userWork = string.gsub(userHome, "home", "epccfs", 1)

setenv("FORGE_ROOT",       pkgRoot)
setenv("FORGE_MPIRUN",     "/usr/bin/srun")
setenv("FORGE_CONFIG_DIR", pathJoin(userWork, ".forge"))

prepend_path("PATH",            pathJoin(pkgRoot, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkgRoot, "lib", "64"))
