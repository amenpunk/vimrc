return {
  setup = function(dap)
    dap.adapters.cppdbg = {
      id = "cppdbg",
      type = "executable",
      command = os.getenv("HOME") .. "/.local/share/nvim/mason/bin/OpenDebugAD7",
      options = {
        detached = false,
      },
    }

    dap.configurations.c = {
      {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.expand("%:r")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = true,
        miDebuggerPath = "/usr/sbin/gdb",
      },
    }
    dap.configurations.cpp = dap.configurations.c
    dap.configurations.php = {
      {
        type = "php",
        request = "launch",
        name = "Listen for xdebug",
        port = 9000,
        log = true,
        pathMappings = {
          ["/var/www/html/${workspaceFolderBasename}"] = "${workspaceFolder}",
        },
      },
    }
  end,
}
