return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")

		notify.setup({
			fps = 15,
			stages = "static",
		})
	end,
}
