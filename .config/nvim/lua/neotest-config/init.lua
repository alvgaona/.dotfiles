local ok, neotest = pcall(require, 'neotest')

if (not ok) then return end

neotest.setup {
  adapters = {
    require 'neotest-python' {
      dap = { justMyCode = false },
    },
    require 'neotest-plenary',
    require 'neotest-go',
    require 'neotest-jest',
    require 'neotest-vim-test' {
      ignore_file_types = { "python", "vim", "lua" },
    },
  },
}

