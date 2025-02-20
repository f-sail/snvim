---@type nvim-autopairs.config

return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = {
        require("plugin.complete.nvim-cmp"),
    },
    config = true,
    -- use opts = {} for passing setup options
    opts = {
        enabled = function(bufnr) return true end, -- control if auto-pairs should be enabled when attaching to a buffer
        disable_filetype = { "TelescopePrompt", "spectre_panel" },
        disable_in_macro = true, -- disable when recording or executing a macro
        disable_in_visualblock = false, -- disable when insert after visual block mode
        disable_in_replace_mode = true,
        ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
        enable_moveright = true,
        enable_afterquote = true, -- add bracket pairs after quote
        enable_check_bracket_line = true, --- check bracket in same line
        enable_bracket_in_quote = true, --
        --enable_abbr = false, -- trigger abbreviation
        enable_abbr = true, -- trigger abbreviation
        break_undo = true, -- switch for basic rule break undo sequence
        --check_ts = false,
        check_ts = true,
        map_cr = true,
        map_bs = true, -- map the <BS> key
        map_c_h = true, -- Map the <C-h> key to delete a pair
        map_c_w = false, -- map <c-w> to delete a pair if possible
    },
    -- this is equivalent to setup({}) function
}
