help([[
ReFrame regression testing software
]])

prereq("cray-python")

local modbase = os.getenv("EPCC_SOFTWARE_DIR") or "/work/y07/shared"

local pkgNameVer = myModuleFullName()
local base = pathJoin(modbase, "cirrus-ex-software/utils/core", pkgNameVer)

prepend_path("PATH", pathJoin(base, "bin"))
family("reframe")

