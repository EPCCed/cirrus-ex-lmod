help([[
rclone 1.72.0
==============

Installed by: A. Turner, EPCC
Date: 25 November 2025

]])


local modbase = os.getenv("EPCC_SOFTWARE_DIR") or "/work/y07/shared"

local pkgNameVer = myModuleFullName()
local pkgVersionBase = pathJoin(modbase, "cirrus-ex-software/utils/core", pkgNameVer)

prepend_path("PATH", pathJoin(pkgVersionBase, "bin"))
prepend_path("MANPATH", pathJoin(pkgVersionBase, "man/man1"))

