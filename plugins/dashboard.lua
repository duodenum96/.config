return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
 ______            _______  ______   _______          _________ _______ 
(  __  \ |\     /|(  ___  )(  __  \ (  ____ \|\     /|\__   __/(       )
| (  \  )| )   ( || (   ) || (  \  )| (    \/| )   ( |   ) (   | () () |
| |   ) || |   | || |   | || |   ) || (__    | |   | |   | |   | || || |
| |   | || |   | || |   | || |   | ||  __)   ( (   ) )   | |   | |(_)| |
| |   ) || |   | || |   | || |   ) || (       \ \_/ /    | |   | |   | |
| (__/  )| (___) || (___) || (__/  )| (____/\  \   /  ___) (___| )   ( |
(______/ (_______)(_______)(______/ (_______/   \_/   \_______/|/     \|
                                                                        
                      ______   ______   ______                          
                     / ____ \ / ____ \ / ____ \                         
                    ( (    \/( (    \/( (    \/                         
                    | (____  | (____  | (____                           
                    |  ___ \ |  ___ \ |  ___ \                          
                    | (   ) )| (   ) )| (   ) )                         
                    ( (___) )( (___) )( (___) )                         
\_____/  \_____/  \_____/    

]],
       -- stylua: ignore
       ---@type snacks.dashboard.Item[]
       keys = {
         { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
         { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
         { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
         { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
         { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
         { icon = " ", key = "s", desc = "Restore Session", section = "session" },
         { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
         { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
         { icon = " ", key = "q", desc = "Quit", action = ":qa" },
       },
      },
    },
  },
}
