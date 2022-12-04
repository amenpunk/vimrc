local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable';
  -- command = '/home/ming/.nvm/versions/node/v18.12.1/bin/node';
  command = 'node';
  args = { os.getenv('HOME') .. '/DAP/node/out/src/nodeDebug.js' };
}

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
      skipFiles = {'<node_internals>/**/*.js'},
      })
end


return {
  attach = attach
}
