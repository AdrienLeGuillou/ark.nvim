local M = {}

-- this does not work for visual lines
local function get_visual_selection()
  local mode = vim.fn.mode()
  if mode == "n" then
    return  vim.fn.getregion(vim.fn.getpos("'<"), vim.fn.getpos("'>"))
  elseif mode == "v" then
    return vim.fn.getregion(vim.fn.getpos("."), vim.fn.getpos("v"))
  end
end

M.current_line = function()
  return vim.fn.getline(".")
end

-- must be called with `:<c-u> ...<cr>`
-- otherwise `'< and `'>` are not set
M.selection = function()
  return  vim.fn.getregion(vim.fn.getpos("'<"), vim.fn.getpos("'>"))
end


return M
