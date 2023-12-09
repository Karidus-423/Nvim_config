return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")

		notify.setup({
			fps = 60,
			stages = "static",
		})
	end,
}
