local function createNewBuffer()
  vim.cmd('vnew')
  local bufnumber = vim.api.nvim_get_current_buf()
  return bufnumber
  
end

local function run()
  -- create one buffer then run with that buffer
  local currbufno = vim.api.nvim_get_current_buf()
  local currfile = vim.api.nvim_buf_get_name(currbufno)
  local bufnr = createNewBuffer()
  vim.cmd('buffer ', currbufno )
  vim.api.nvim_create_autocmd("BufWritePost",{
    group = vim.api.nvim_create_augroup("DD", { clear = true}),
    pattern = "*.py",
    callback = function ()
      vim.api.nvim_buf_set_lines(bufnr,0,-1,false,{"Output of the main.py file:"})
    
      vim.fn.jobstart({"python3", currfile}, {
        stdout_buffered = true,
        on_stdout = function(_,data)
          if data then
            vim.api.nvim_buf_set_lines(bufnr,-1,-1,false,data)
          end
        end,
        on_stderr = function(_, data)
          if data then
            vim.api.nvim_buf_set_lines(bufnr,-1,-1,false,data)
          end
        end
      })
    end,
  })

end

return run
