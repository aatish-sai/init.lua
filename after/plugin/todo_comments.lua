local status, todo_comments = pcall(require, 'todo-comments')
if not status then
    return
end

todo_comments.setup({
    signs = true,
    sign_priority = 8,
    keywords = {
        FIX = {
            alt = {
                'FIXME',
                'BUG',
                'FIXIT',
                'ISSUE'
            },
            WARN = {
                alt = {
                    'WARNING'
                }
            },
            PERF = {
                alt = {
                    'OPTIM',
                    'PERFORMANCE',
                    'OPTIMIZE'
                }
            }
        }
    },
    highlight = {
        before = '',
        keyword = 'wide',
        after = '',
        comments_only = true,
        max_line_len = 400,
        exclude = {}
    }
})

vim.keymap.set('n', ']t', function() todo_comments.jump_next() end, { desc = 'Next todo comment' })
vim.keymap.set('n', '[t', function() todo_comments.jump_prev() end, { desc = 'Previous todo comment' })
