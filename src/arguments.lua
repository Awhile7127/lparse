args = {}


-- CREATE NEW PROTOTYPE INSTANCE
args.new = function(self)
    local res = {}
    setmetatable(res, self)
    self.__index = self
    return res
end


-- DECLARE DICTIONARY VALUE
args.add_argument = function(self, arg, value)
    self[arg] = value
end


return args
