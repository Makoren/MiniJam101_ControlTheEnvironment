local M = {}

M.has_fire_started = false

-- remove scripts as soon as they are burned
M.active_flammables = {}

-- defgraph node positions
M.node_positions = {}

return M