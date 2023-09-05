local Hydra = require('hydra')
local cmd = require('hydra.keymap-util').cmd
local dap = require('dap')
local dapui = require('dapui')

local hint = [[
                 _t_: themes       _m_: marks
   🭇🬭🬭🬭🬭🬭🬭🬭🬭🬼    _o_: old files   _g_: live grep
  🭉🭁🭠🭘    🭣🭕🭌🬾   _p_: projects    _/_: search in file
  🭅█ ▁     █🭐
  ██🬿      🭊██   _r_: resume      _u_: undotree
 🭋█🬝🮄🮄🮄🮄🮄🮄🮄🮄🬆█🭀  _h_: vim help    _c_: execute command
 🭤🭒🬺🬹🬱🬭🬭🬭🬭🬵🬹🬹🭝🭙  _k_: keymaps     _;_: commands history
                 _O_: options     _?_: search history
 ^
                 _<Enter>_: Telescope           _<Esc>_
]]

Hydra({
  name = 'Telescope',
  hint = hint,
  config = {
    color = 'teal',
    invoke_on_body = true,
    hint = {
      position = 'middle',
      border = 'rounded',
    },
  },
  mode = 'n',
  body = '<Leader>t',
  heads = {
    { 't',       cmd 'Telescope colorscheme' },
    { 'g',       cmd 'Telescope live_grep' },
    { 'o',       cmd 'Telescope oldfiles',                  { desc = 'recently opened files' } },
    { 'h',       cmd 'Telescope help_tags',                 { desc = 'vim help' } },
    { 'm',       cmd 'MarksListBuf',                        { desc = 'marks' } },
    { 'k',       cmd 'Telescope keymaps' },
    { 'O',       cmd 'Telescope vim_options' },
    { 'r',       cmd 'Telescope resume' },
    { 'p',       cmd 'Telescope projects',                  { desc = 'projects' } },
    { '/',       cmd 'Telescope current_buffer_fuzzy_find', { desc = 'search in file' } },
    { '?',       cmd 'Telescope search_history',            { desc = 'search history' } },
    { ';',       cmd 'Telescope command_history',           { desc = 'command-line history' } },
    { 'c',       cmd 'Telescope commands',                  { desc = 'execute command' } },
    { 'u',       cmd 'silent! %foldopen! | UndotreeToggle', { desc = 'undotree' } },
    { '<Enter>', cmd 'Telescope',                           { exit = true, desc = 'list all pickers' } },
    { '<Esc>',   nil,                                       { exit = true, nowait = true } },
  }
})

hint = [[
 Nvim DAP
 _d_: Start/Continue  _j_: StepOver _k_: StepOut _l_: StepInto ^
 _bp_: Toogle Breakpoint  _bc_: Conditional Breakpoint ^
 _?_: log point ^
 _c_: Run To Cursor ^
 _h_: Show information of the variable under the cursor ^
 _x_: Stop Debbuging ^
 ^^                                                      _<Esc>_
]]

Hydra {
  name = "dap",
  hint = hint,
  mode = "n",
  config = {
    color = "blue",
    invoke_on_body = true,
    hint = {
      border = "rounded",
      position = "bottom",
    }
  },
  body = "<leader>d",
  heads = {
    { "d", dap.continue },
    { "bp", dap.toggle_breakpoint },
    { "l", dap.step_into },
    { "j", dap.step_over },
    { "k", dap.step_out },
    { "h", dapui.eval },
    { "c", dap.run_to_cursor },
    {
      "bc",
      function()
        vim.ui.input({ prompt = "Condition: " }, function(condition)
          dap.set_breakpoint(condition)
        end)
      end,
    },
    {
      "?",
      function()
        vim.ui.input({ prompt = "Log: " }, function(log)
          dap.set_breakpoint(nil, nil, log)
        end)
      end,
    },
    {
      "x",
      function()
        dap.terminate()
        dapui.close {}
        dap.clear_breakpoints()
      end,
    },

    { "<Esc>", nil, { exit = true } },
  },
}



