require('trouble').setup {
    auto_open = false,
    auto_close = true,
    auto_preview = true,
}

require('goto-preview').setup {border = 'double'}

require('ccc').setup {
    highlighter = {
        auto_enable = true,
        lsp = true
    },
    win_ops = {border = 'double'}
}

require('fzf-lua').setup { winopts = {border = 'double'} }

local wk = require('which-key')
	wk.setup {
   		window = {border = 'double'},
        triggers = 'auto',
        position = 'top'
   	}

    wk.register({
        b = {'<cmd>lua require("fzf-lua").buffers()<cr>', 'Buffers'},

        f = {name = 'Files'},
        ff = {'<cmd>lua require("fzf-lua").files()<cr>', 'Find'},
        fb = {'<cmd>Dirbuf<cr>', 'Browser'},
        r = {'<cmd>lua require("fzf-lua").oldfiles()<cr>', 'Recent'},
        fn = {'<cmd>enew<cr>', 'New'},
        fs = {'<cmd>up<cr>', 'Save Current'},
        fa = {'<cmd>wa<cr>', 'Save All'},

        g = {name = 'Grep'},
        gg = {'<cmd>lua require("fzf-lua").lgrep_curbuf()<cr>', 'Current Buffer'},
        gp = {'<cmd>lua require("fzf-lua").live_grep_native()<cr>', 'Project'},
        gr = {'<cmd>lua require("fzf-lua").oldfiles()<cr>', 'Recent Files'},
        gb = {'<cmd>lua require("fzf-lua").buffers()<cr>', 'All Buffers'},
        gc = {'<cmd>lua require("fzf-lua").commands()<cr>', 'Commands'},
        gs = {'<cmd>lua require("fzf-lua").spell_suggest()<cr>', 'Spelling'},

        G = {name = 'GOTO'},
        Gd = {'<cmd>lua require("goto-preview").goto_preview_definition()<cr>', 'Definition'},
        Gt = {'<cmd>lua require("goto-preview").goto_preview_type_definition()<cr>', 'TypeDef'},
        Gi = {'<cmd>lua require("goto-preview").goto_preview_implementation()<cr>', 'Implementation'},
        Gc = {'<cmd>lua require("goto-preview").close_all_win()<cr>', 'Close'},
        Gr = {'<cmd>lua require("goto-preview").goto_preview_references()<cr>', 'References'},

        Q = {'<cmd>qa<cr>', 'Quit'},

        c = {'<cmd>CccPick<cr>', 'Color Picker'},

        D = {'<cmd>DocsViewToggle<cr>', 'Docs'},

        l = {'<cmd>Lazy<cr>', 'Lazy'},

        d = {'<cmd>TroubleToggle<cr>', 'Diagnostics'},
    },
    {prefix = '<leader>'}
)

require('lualine').setup {
    sections = {
        lualine_c = {
            {
                'lsp_progress',
                display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' }},
	            separators = {
    		        component = ' ',
        		    progress = ' | ',
        		    message = { pre = '(', post = ')'},
        		    percentage = { pre = '', post = '%% ' },
        		    title = { pre = '', post = ': ' },
        		    lsp_client_name = { pre = '[', post = ']' },
        		    spinner = { pre = '', post = '' },
        		    message = { commenced = 'In Progress', completed = 'Completed' },
        	    },
            }
        }
    }
}
