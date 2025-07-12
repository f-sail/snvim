---@type support.template.init
--[[
    {{_date_}}                      插入当前日期
    
    {{_cursor_}}                    将光标设在此处
    
    {{_file_name_}}                 当前文件名
    
    {{_author_}}                    作者信息
    
    {{_email_}}                     向 Adrress 发送电子邮件
    
    {{_variable_}}                  变量名称
    
    {{_upper_file_}}                全大写文件名
    
    {{_camel_case_file_}}           snake_case文件名转换为 CamelCase
    
    {{_lua:vim.fn.expand(%:.:r)_}}  由 lua 脚本设置
--]]
return {
    "glepnir/template.nvim",
    cmd = {
        "Template",
        "TemProject"
    },
    config = function()
        require('template').setup({
            temp_dir = "~/.config/nvim/lua/plugin/support/template/templates",
            author = "",
            email = "",
        })
    end

}
