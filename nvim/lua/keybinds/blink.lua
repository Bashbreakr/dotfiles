return {
  ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
  ['<C-e>'] = { 'hide' },
  
  -- Accept completion OR expand/accept snippet
  ['<CR>'] = { 'accept', 'fallback' }, 

  -- Select next item in menu OR jump forward in snippet placeholders
  ['<Tab>'] = { 'snippet_forward', 'select_next', 'fallback' },
  
  -- Select previous item in menu OR jump backward in snippet placeholders
  ['<S-Tab>'] = { 'snippet_backward', 'select_prev', 'fallback' }, 

  ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
  ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
}
