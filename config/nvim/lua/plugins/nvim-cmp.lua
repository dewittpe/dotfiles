return {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
	sources = {{ name = "cmp_r" }},
	mapping = cmp.mapping.preset.insert({
	  ['<CR>'] = cmp.mapping.confirm({ select = false }),
	  -- During auto-completion, press <Tab> to select the next item.
	  ['<Tab>'] = cmp.mapping(function(fallback)
	    if cmp.visible() then
	      cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
	    -- elseif has_words_before() then
	    --  cmp.complete()
	    else
	      fallback()
	    end
	  end, { 'i', 's' }),
	  ['<S-Tab>'] = cmp.mapping(function(fallback)
	    if cmp.visible() then
	      cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
	    else
	      fallback()
	    end
	  end, { 'i', 's' }),
	}),
      })
      require("cmp_r").setup({ })
    end,
  }
