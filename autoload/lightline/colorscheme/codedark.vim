" =============================================================================
" Filename: autoload/lightline/colorscheme/codedark.vim
" Author: artanikin
" License: MIT License
" Last Change: 2019/12/05 12:26:00
" =============================================================================

let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ '#000000', '#608B4E', s:term_black, s:term_green, 'bold' ], [ '#608B4E', 'NONE', s:term_green, s:term_black, 'bold' ] ]
let s:p.normal.right = [ [ '#000000', '#608B4E', s:term_black, s:term_green ], [ '#608B4E', 'NONE', s:term_white, s:term_grey ], [ '#608B4E', 'NONE', s:term_green, s:term_black ] ]
let s:p.inactive.right = [ [ '#608B4E', 'NONE', s:term_black, s:term_blue, 'bold,underline'],  [ '#608B4E', 'NONE', s:term_white, s:term_grey, 'bold,underline' ], [ '#608B4E', 'NONE', s:term_white, s:term_grey, 'bold,underline' ] ]
let s:p.inactive.left = s:p.inactive.right[1:]
let s:p.insert.left = [ [ '#000000', '#569CD6', s:term_black, s:term_blue, 'bold' ], [ '#569CD6', 'NONE', s:term_blue, s:term_black ] ]
let s:p.insert.right = [ [ '#000000', '#569CD6', s:term_black, s:term_blue ], [ '#608B4E', 'NONE', s:term_white, s:term_grey ], [ '#569CD6', 'NONE', s:term_blue, s:term_black ] ]
let s:p.replace.left = [ [ '#000000', '#D16969', s:term_black, s:term_red, 'bold' ], [ '#D16969', 'NONE', s:term_red, s:term_black ] ]
let s:p.replace.right = [ [ '#000000', '#D16969', s:term_black, s:term_red, 'bold' ], s:p.normal.right[1], [ '#D16969', 'NONE', s:term_red, s:term_black ] ]
let s:p.visual.left = [ [ '#000000', '#C586C0', s:term_black, s:term_purple, 'bold' ], [ '#C586C0', 'NONE', s:term_purple, s:term_black ] ]
let s:p.visual.right = [ [ '#000000', '#C586C0', s:term_black, s:term_purple, 'bold' ], s:p.normal.right[1], [ '#C586C0', 'NONE', s:term_purple, s:term_black ] ]
let s:p.normal.middle = [ [ '#608B4E', 'NONE', s:term_white, s:term_black ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle
let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.normal.error = [ [ '#262626', '#D16969', s:term_black, s:term_red ] ]
let s:p.normal.warning = [ [ '#262626', '#D7BA7D', s:term_black, s:term_yellow ] ]

let g:lightline#colorscheme#codedark#palette = lightline#colorscheme#fill(s:p)
