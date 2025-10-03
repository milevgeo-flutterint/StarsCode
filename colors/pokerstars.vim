" PokerStars Neovim Color Scheme
" Based on PokerStars brand colors
" Created on October 3, 2025

" Setup the colors (Lua -> Vim conversion)
lua << EOF
require('pokerstars').setup()
EOF

let g:colors_name = "pokerstars"
