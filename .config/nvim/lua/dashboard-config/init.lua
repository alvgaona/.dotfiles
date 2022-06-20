local ok, db = pcall(require, 'dashboard')

if (not ok) then return end

local home = os.getenv('HOME')



db.default_executive = 'telescope'

db.preview_command = 'cat | lolcat -F 0.3'
db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 12
db.preview_file_width = 80

db.custom_center = {
	{
		icon = '  ',
		desc = 'Recently latest session                ',
		action ='SessionLoad'
	},
	{
		icon = '  ',
		desc = 'Find File                              ',
		action = 'Telescope find_files find_command=rg,--hidden,--files',
	},
	{
		icon = '  ',
		desc = 'Search word                            ',
		action = 'Telescope live_grep',
	},
	{
		icon = '  ',
		desc = 'Open dotfiles                          ',
		action = 'Telescope find_files promp_prefix=' .. home ..'/.dotfiles',
	},
}

