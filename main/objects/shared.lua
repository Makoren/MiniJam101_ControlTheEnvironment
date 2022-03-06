-- All functions shared by more than one object go here
local gamestate = require("data.gamestate")

local M = {}

function M.get_nearest_worker_node()
	local root_pos = go.get_position("root")

	-- create copy of table for sorting, since it sorts in-place
	local positions_copy = table.clone(gamestate.node_positions)

	table.sort(positions_copy, function(pos1, pos2)
		-- get distance between pos1 and the fire, then pos2 and the fire, and return a check between those distances
		local distance1 = pos1 - root_pos
		local distance2 = pos2 - root_pos
		return vmath.length(distance1) < vmath.length(distance2)
	end)

	-- check original table for that exact position, and return the node index
	local nearest_node_id
	for i, v in ipairs(gamestate.node_positions) do
		if positions_copy[1] == gamestate.node_positions[i] then
			nearest_node_id = i
		end
	end
	
	return nearest_node_id
end

return M