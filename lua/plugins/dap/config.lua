return {
  setup = function(dap)
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
