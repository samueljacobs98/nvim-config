# Neovim Keybindings Manual

Leader key: `Space`

## LSP

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `K` | Hover documentation | Hover mouse over symbol |
| `Space g d` | Go to definition | `Cmd + Click` |
| `Space g r` | Go to references | `Shift + F12` |
| `Space g f` | Format buffer | `Shift + Option + F` |
| `Space c a` | Code action | `Cmd + .` |

## Navigation (Jump List)

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Space g o` | Jump back | `Ctrl + -` |
| `Space g i` | Jump forward | `Ctrl + Shift + -` |

## File Search (Telescope)

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Ctrl + P` | Find files | `Cmd + P` |
| `Space f g` | Live grep (search in files) | `Cmd + Shift + F` |
| `Space Space` | Recent files | `Ctrl + R` |
| `Space f t` | Live grep filtered by file glob | `Cmd + Shift + F` with filters |

## File Explorer

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Space b` | Toggle Neo-tree sidebar | `Cmd + B` (sidebar) |
| `Space o b` | Browse open buffers (float) | `Cmd + P` then type |
| `-` | Toggle Oil file manager (float) | — |

### Inside Neo-tree

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Enter` | Expand / collapse folder (or open file) | Click folder / file |
| `Space` | Toggle preview | — |
| `H` | Toggle hidden files | — |

## Window / Pane Navigation

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Ctrl + H` | Navigate left (Nvim/Tmux) | — |
| `Ctrl + J` | Navigate down (Nvim/Tmux) | — |
| `Ctrl + K` | Navigate up (Nvim/Tmux) | — |
| `Ctrl + L` | Navigate right (Nvim/Tmux) | — |

## Git

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Space g p` | Preview git hunk | Click gutter annotation |
| `Space g t` | Toggle line blame | GitLens inline blame |

## Misc

| Keys | Action | Cursor Equivalent |
|------|--------|--------------------|
| `Space h` | Clear search highlight | `Esc` |

---

# Essential Vim Commands

## Modes

| Keys | Action |
|------|--------|
| `i` | Enter Insert mode (before cursor) |
| `a` | Enter Insert mode (after cursor) |
| `o` | Insert new line below and enter Insert mode |
| `O` | Insert new line above and enter Insert mode |
| `v` | Enter Visual mode (character select) |
| `V` | Enter Visual line mode (line select) |
| `Esc` | Return to Normal mode |

## Movement

| Keys | Action |
|------|--------|
| `h j k l` | Left, Down, Up, Right |
| `w` | Jump forward to start of next word |
| `b` | Jump backward to start of previous word |
| `e` | Jump forward to end of word |
| `0` | Jump to start of line |
| `$` | Jump to end of line |
| `gg` | Jump to top of file |
| `G` | Jump to bottom of file |
| `{` | Jump to previous blank line |
| `}` | Jump to next blank line |
| `%` | Jump to matching bracket |
| `[{` | Jump to start of current `{` block |
| `]}` | Jump to end of current `}` block |

## Editing

| Keys | Action |
|------|--------|
| `x` | Delete character under cursor |
| `dd` | Delete (cut) entire line |
| `dw` | Delete from cursor to start of next word |
| `D` | Delete from cursor to end of line |
| `cc` | Change (delete + insert) entire line |
| `cw` | Change from cursor to start of next word |
| `C` | Change from cursor to end of line |
| `yy` | Yank (copy) entire line |
| `yw` | Yank from cursor to start of next word |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `u` | Undo |
| `Ctrl + R` | Redo |
| `.` | Repeat last change |

## Search

| Keys | Action |
|------|--------|
| `/text` | Search forward for "text" |
| `?text` | Search backward for "text" |
| `n` | Next search match |
| `N` | Previous search match |
| `*` | Search forward for word under cursor |

## Find and Replace

| Keys | Action |
|------|--------|
| `:s/old/new` | Replace first "old" with "new" on current line |
| `:s/old/new/g` | Replace all "old" with "new" on current line |
| `:%s/old/new/g` | Replace all "old" with "new" in entire file |
| `:%s/old/new/gc` | Replace all in file, with confirmation for each |

## Visual Mode

| Keys | Action |
|------|--------|
| `d` | Delete selection |
| `y` | Yank (copy) selection |
| `>` | Indent selection |
| `<` | Unindent selection |

## Buffers & Commands

| Keys | Action |
|------|--------|
| `:w` | Save file |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |
| `:vs` | Vertical split |
| `:sp` | Horizontal split |
