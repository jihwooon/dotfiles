local status, neotest = pcall(require, "neotest")
if not status then return end

neotest.setup {
  adapters = {
    require("neotest-jest")({
      jestCommand = "npm run test -- --watch",
      jestConfigFile = "custom.jest.config.ts",
      discovery = {
        enabled = false,
      },
      env = { CI = true },
      cwd = function ()
        return vim.fn.getcwd()
      end,
    }),
  }
}

vim.api.nvim_set_keymap("n", "<leader>tw", "<cmd>lua require('neotest').run.run({ jestCommand = 'npm run test -- --watch ' })<cr>", {})

