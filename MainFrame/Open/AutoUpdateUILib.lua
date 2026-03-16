
local url = "https://raw.githubusercontent.com/BaHost01/OpenSource-stuff-/refs/heads/main/MainFrame/Open/UILibrary.luau"

local old

while true do
    task.wait(5)

    local lib = loadstring(game:HttpGet(url))()

    if old and lib.version ~= old then
        warn("Library Updated:", old, "->", lib.version)
    end

    old = lib.version
end
