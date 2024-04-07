local dap = require('dap')

dap.adapters.php = {
  type = "executable",
  command = "php-debug-adapter",
  -- args = { os.getenv("HOME") .. "/DAP/vscode-php-debug/out/phpDebug.js" }
}

dap.configurations.php = {
  {
    type = "php",
    request = "launch",
    name = "Listen for Xdebug",
    port = 9000,
    pathMappings = {
      ["/var/www/html"] = "${workspaceFolder}"
    }
    -- cwd = "${fileDirname}",
    -- program = "${file}",
    -- runtimeExecutable = "php",
  }
}


-- local function attach()
--   print("attaching")
--   dap.run({
--     type = 'php',
--     -- request = 'attach',
--     protocol = 'inspector',
--     skipFiles = { '<node_internals>/**/*.js' },
--   })
-- end
--
--
-- return {
--   attach = attach
-- }
