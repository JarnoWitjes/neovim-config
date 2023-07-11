local dap = require('dap')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/Users/j.witjes/dev/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9003
    }
}

-- Keymappings
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F11>', dap.step_into)
vim.keymap.set('n', '<F12>', dap.step_out)

-- Change Text to Icons
vim.fn.sign_define('DapBreakpoint',{ text ='', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='', texthl ='', linehl ='', numhl =''})
