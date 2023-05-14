local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = { os.getenv('HOME') .. '/DAP/vscode-node-debug2/out/src/nodeDebug.js' },
}

vim.fn.sign_define('DapBreakpoint', { text = '🐞', texthl = '', linehl = '', numhl = '' })
-- dap.set_log_level('TRACE');

-- NOTE:
-- para ejecutar debugger se debe correr el scirpt con la bandera --inspectd

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require 'dap.utils'.pick_process,
  },
}

local function attach()
  print("attaching")
  dap.run({
    type = 'node2',
    request = 'attach',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    skipFiles = { '<node_internals>/**/*.js' },
  })
end


return {
  attach = attach
}
