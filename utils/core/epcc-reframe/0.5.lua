prereq("reframe")


local modbase = os.getenv("EPCC_SOFTWARE_DIR") or "/work/y07/shared"

local pkgNameVer = myModuleFullName()
local base = pathJoin(modbase, "cirrus-ex-software/utils/core", pkgNameVer)

prepend_path("PATH", pathJoin(base, "bin"))
setenv("EPCC_REFRAME_CONFIG", pathJoin(base, "configuration/cirrus-ex.py"))
setenv("EPCC_REFRAME_TEST_DIR", pathJoin(base, "tests"))

family("epcc_reframe")

