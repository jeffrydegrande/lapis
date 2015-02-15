local check_args
check_args = function(name)
  if not (name) then
    return error("model template takes arguments: name")
  end
end
local content
content = function(name)
  local camelize
  do
    local _obj_0 = require("lapis.util")
    camelize = _obj_0.camelize
  end
  local class_name = camelize(name)
  return [[db = require "lapis.db"
import Model from require "lapis.db.model"

class ]] .. class_name .. [[ extends Model
]]
end
local filename
filename = function(name)
  return "models/" .. tostring(name) .. ".moon"
end
return {
  content = content,
  filename = filename,
  check_args = check_args
}
