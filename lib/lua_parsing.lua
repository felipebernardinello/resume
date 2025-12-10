-- Helper function to parse key=value
function parse_keyval(str)
    local result = {}
    str = str:gsub("^%s+", ""):gsub("%s+$", "")

    for key, value in str:gmatch("(%w+)%s*=%s*{([^}]*)}") do
        result[key] = value
    end
    
    return result
end

resume_data = {}

function set_resume_data(category, kvstr)
    resume_data[category] = parse_keyval(kvstr)
end

function get_resume_value(category, key, default)
    if resume_data[category] and resume_data[category][key] then
        return resume_data[category][key]
    end
    return default or ""
end