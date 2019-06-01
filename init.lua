core.register_chatcommand("itemslist", {
   params = "[search]",
   description = "find item names or list all items",
   privs = {},
   func = function(name, param)
local number = 0
   local file = minetest.get_worldpath() .. "/items"
   local output = io.open(file, "w")
   for name, item in pairs(minetest.registered_items) do
      number = number + 1
      output:write(name.."\n")
   end
   io.close(output)
   print("There are "..number.." registered items.")
   minetest.chat_send_player("Player", "There are "..number.." registered items.")
   end,
})

core.register_chatcommand("nodeslist", {
   params = "[search]",
   description = "find item names or list all nodes",
   privs = {},
   func = function(name, param)
local number = 0
   local file = minetest.get_worldpath() .. "/nodes"
   local output = io.open(file, "w")
   for name, item in pairs(minetest.registered_items) do
      number = number + 1
      output:write(name.."\n")
   end
   io.close(output)
   print("There are "..number.." registered nodes.")
   minetest.chat_send_player("Player", "There are "..number.." registered nodes.")
   end,
})

core.register_chatcommand("craftitemslist", {
   params = "[search]",
   description = "find item names or list all craftitems",
   privs = {},
   func = function(name, param)
local number = 0
   local file = minetest.get_worldpath() .. "/craftitems"
   local output = io.open(file, "w")
   for name, item in pairs(minetest.registered_craftitems) do
      number = number + 1
      output:write(name.."\n")
   end
   io.close(output)
   print("There are "..number.." registered craftitems.")
   minetest.chat_send_player("Player", "There are "..number.." registered craftitems.")
   end,
})

core.register_chatcommand("toolslist", {
   params = "[search]",
   description = "find item names or list all tools",
   privs = {},
   func = function(name, param)
local number = 0
   local file = minetest.get_worldpath() .. "/tools"
   local output = io.open(file, "w")
   for name, item in pairs(minetest.registered_tools) do
      number = number + 1
      output:write(name.."\n")
   end
   io.close(output)
   print("There are "..number.." registered tools.")
   minetest.chat_send_player("Player", "There are "..number.." registered tools.")
   end,
})