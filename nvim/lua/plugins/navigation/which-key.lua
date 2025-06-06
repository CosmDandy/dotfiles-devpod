return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    preset = 'modern',
    delay = 1000,
    icons = {
      mappings = false,
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },
    spec = {
      { '<leader>c',  group = '[C]ode',     mode = { 'n', 'x' } },
      { '<leader>d',  group = '[D]ocument' },
      { '<leader>r',  group = '[R]ename' },
      { '<leader>s',  group = '[S]earch' },
      { '<leader>w',  group = '[W]orkspace' },
      { '<leader>t',  group = '[T]ools' },
      { '<leader>m',  group = '[M]ap' },
      { '<leader>g',  group = '[G]it',      mode = { 'n', 'v' } },
      { '<leader>gd', group = '[D]iff',     mode = { 'n', 'v' } },
    },
  },
}
