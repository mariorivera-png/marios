
local c = {
	white = "#ffffff",
	bg = "none",
	fg = "#f9f9f9",
	red = "#ff0080",
	green = "#79ff0f",
	blue = "#2d70ff",
	yellow = "#ffee00",
	magenta = "#b449be",
	pink = "#ff80eb",
	cyan = "#00c8ff",
	Lgray = "#b9b9b9",
	Dgray = "#555555",
	gray = "#969696",
	orange = "#ffa600",

	Agray = "#000000bb",
}
return {
  normal = {
  			a = { bg = c.gray, fg = c.bg, gui = "bold" },
  			b = { bg = c.Lgray, fg = c.white },
  			c = { bg = c.Dgray, fg = c.gray },
  		},
  		insert = {
  			a = { bg = c.blue, fg = c.bg, gui = "bold" },
  			b = { bg = c.Lgray, fg = c.white },
  			c = { bg = c.Lgray, fg = c.white },
  		},
  		visual = {
  			a = { bg = c.yellow, fg = c.bg, gui = "bold" },
  			b = { bg = c.Lgray, fg = c.white },
  			c = { bg = c.inactivegray, fg = c.bg },
  		},
  		replace = {
  			a = { bg = c.red, fg = c.bg, gui = "bold" },
  			b = { bg = c.Lgray, fg = c.white },
  			c = { bg = c.bg, fg = c.white },
  		},
  		command = {
  			a = { bg = c.green, fg = c.bg, gui = "bold" },
  			b = { bg = c.Lgray, fg = c.white },
  			c = { bg = c.inactivegray, fg = c.bg },
  		},
  		inactive = {
  			a = { bg = c.Dgray, fg = c.gray, gui = "bold" },
  			b = { bg = c.Dgray, fg = c.gray },
  			c = { bg = c.Dgray, fg = c.gray },
  		},
}

require('lualine').setup {options = {theme = marios}}
