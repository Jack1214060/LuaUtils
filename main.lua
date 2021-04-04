local Library = {}

function Library:Init()
    local InsideLibrary = {}

    function InsideLibrary:GetExploit()
        local exploit =
            (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "Sirhurt") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getscriptenvs and "Calamari") or
            (unit and not syn and "Unit") or
            (OXYGEN_LOADED and "Oxygen") or
            (IsElectron and "Electron") or
            ("Unknown")
        
        return exploit
    end

    function InsideLibrary:SetupCompatibility()
        getgenv().http_request = http_request or request or (http and http.request) or syn.request 
        repeat until http_request

        getgenv().queue_on_teleport = queue_on_teleport or onteleport or syn.queue_on_teleport
        repeat until queue_on_teleport

        getgenv().setclipboard = setclipboard or syn_clipboard_set
        repeat until setclipboard
    end

    return InsideLibrary;

end

return Library;
