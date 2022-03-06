local M = {}

M.has_fire_started = false

-- remove scripts as soon as they are burned
M.active_flammables = {}

-- defgraph node positions
M.node_positions = {}

-- convenient place to access this worker node so you don't need to loop a table
M.extinguishers_worker_node = -1

return M