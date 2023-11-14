local status, autopaires = pcall(require, 'nvim-autopaires')
if (not status) then return end

autopaires.setup {
  disable_filetype = { "TelescopePrompt" , "vim" },
}

