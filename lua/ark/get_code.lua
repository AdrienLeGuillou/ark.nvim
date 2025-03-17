local M = {}

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

M.selection = function()
  return table.concat(get_visual_selection(), '\n')
end


return M
