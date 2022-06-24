local ok, toggleterm = pcall(require, 'toggleterm')

if (not ok) then return end

toggleterm.setup {
  direction = 'float',
  float_opts = {
    border = 'curved',
  }
}

