-- PokerStars Neovim Color Scheme
-- Based on PokerStars brand colors
-- Created on October 3, 2025

local M = {}

-- Color Palette based on PokerStars brand
local colors = {
  stars_red = "#d70022",
  stars_red_dark = "#990707",
  stars_red_light = "#f40027",
  
  stars_green = "#02bd9c",
  stars_green_dark = "#089b80",
  stars_green_light = "#36e7c7",
  
  stars_blue = "#00819f",
  stars_blue_light = "#0075f3",
  stars_blue_dark = "#00599e",
  
  stars_yellow = "#f1b63a",
  stars_yellow_dark = "#e6a816",
  
  poker_purple = "#5b34c1",
  poker_purple_alt = "#763d73",
  
  stars_black = "#000000",
  stars_black_grey = "#212121",
  stars_black_carbon = "#333333",
  stars_black_charcoal = "#444444",
  stars_black_neutral = "#666666",
  
  stars_white = "#ffffff",
  stars_white_dark = "#dddddd",
  stars_white_neutral = "#e0e0e0",
  stars_white_grey = "#f5f5f5",
  
  poker_gold = "#f1b844",
  poker_melted_butter = "#ffcf56",
}

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.g.colors_name = "pokerstars"
  
  -- Editor colors
  local editor = {
    Normal = { fg = colors.stars_white_dark, bg = colors.stars_black_grey },
    NormalFloat = { fg = colors.stars_white, bg = colors.stars_black_carbon },
    FloatBorder = { fg = colors.stars_red, bg = colors.stars_black_carbon },
    Cursor = { fg = colors.stars_black, bg = colors.stars_white },
    CursorLine = { bg = colors.stars_black_carbon },
    CursorLineNr = { fg = colors.stars_red, bold = true },
    LineNr = { fg = colors.stars_black_neutral },
    SignColumn = { fg = colors.stars_white_dark, bg = colors.stars_black_grey },
    VertSplit = { fg = colors.stars_black_carbon, bg = colors.stars_black_grey },
    StatusLine = { fg = colors.stars_white, bg = colors.stars_red_dark, bold = true },
    StatusLineNC = { fg = colors.stars_white_dark, bg = colors.stars_black_carbon },
    Search = { fg = colors.stars_black, bg = colors.stars_yellow },
    IncSearch = { fg = colors.stars_black, bg = colors.stars_yellow_dark },
    Visual = { bg = colors.stars_black_carbon },
    MatchParen = { fg = colors.stars_white, bg = colors.stars_blue_dark },
    NonText = { fg = colors.stars_black_neutral },
    Directory = { fg = colors.stars_blue },
    Title = { fg = colors.stars_red, bold = true },
    Folded = { fg = colors.stars_white_dark, bg = colors.stars_black_carbon },
    FoldColumn = { fg = colors.stars_white_dark, bg = colors.stars_black_grey },
    Conceal = { fg = colors.stars_black_neutral },
    ErrorMsg = { fg = colors.stars_red_light, bold = true },
    WarningMsg = { fg = colors.stars_yellow_dark, bold = true },
    MoreMsg = { fg = colors.stars_green },
    Question = { fg = colors.stars_green },
    ModeMsg = { fg = colors.stars_white, bold = true },
    Pmenu = { fg = colors.stars_white, bg = colors.stars_black_carbon },
    PmenuSel = { fg = colors.stars_black, bg = colors.stars_green },
    PmenuSbar = { bg = colors.stars_black_charcoal },
    PmenuThumb = { bg = colors.stars_white_dark },
    WildMenu = { fg = colors.stars_black, bg = colors.stars_green },
    SpecialKey = { fg = colors.stars_blue_light },
    TabLine = { fg = colors.stars_white_dark, bg = colors.stars_black_carbon },
    TabLineSel = { fg = colors.stars_white, bg = colors.stars_red_dark, bold = true },
    TabLineFill = { bg = colors.stars_black_charcoal },
    ColorColumn = { bg = colors.stars_red_dark },
    SpellBad = { undercurl = true, sp = colors.stars_red_light },
    SpellCap = { undercurl = true, sp = colors.stars_blue },
    SpellLocal = { undercurl = true, sp = colors.stars_green },
    SpellRare = { undercurl = true, sp = colors.poker_purple },
    DiagnosticError = { fg = colors.stars_red_light },
    DiagnosticWarn = { fg = colors.stars_yellow_dark },
    DiagnosticInfo = { fg = colors.stars_blue },
    DiagnosticHint = { fg = colors.stars_green },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.stars_red_light },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.stars_yellow_dark },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.stars_blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.stars_green },
  }

  -- Syntax highlighting
  local syntax = {
    Comment = { fg = colors.stars_black_neutral, italic = true },
    Constant = { fg = colors.stars_blue_light },
    String = { fg = colors.stars_green },
    Character = { fg = colors.stars_green_dark },
    Number = { fg = colors.poker_gold },
    Boolean = { fg = colors.stars_yellow_dark, bold = true },
    Float = { fg = colors.poker_gold },
    
    Identifier = { fg = colors.stars_blue },
    Function = { fg = colors.stars_red },
    
    Statement = { fg = colors.stars_red },
    Conditional = { fg = colors.stars_red },
    Repeat = { fg = colors.stars_red },
    Label = { fg = colors.stars_yellow },
    Operator = { fg = colors.stars_white },
    Keyword = { fg = colors.stars_red_dark },
    Exception = { fg = colors.stars_red_light },
    
    PreProc = { fg = colors.poker_purple },
    Include = { fg = colors.poker_purple },
    Define = { fg = colors.poker_purple },
    Macro = { fg = colors.poker_purple },
    PreCondit = { fg = colors.poker_purple },
    
    Type = { fg = colors.stars_blue },
    StorageClass = { fg = colors.stars_blue_dark },
    Structure = { fg = colors.stars_blue_dark },
    Typedef = { fg = colors.stars_blue_dark },
    
    Special = { fg = colors.stars_yellow },
    SpecialChar = { fg = colors.stars_yellow_dark },
    Tag = { fg = colors.stars_green },
    Delimiter = { fg = colors.stars_white_dark },
    SpecialComment = { fg = colors.stars_black_neutral, italic = true, bold = true },
    Debug = { fg = colors.stars_red_light },
    
    Underlined = { underline = true },
    Ignore = { fg = colors.stars_black_neutral },
    Error = { fg = colors.stars_white, bg = colors.stars_red, bold = true },
    Todo = { fg = colors.stars_black, bg = colors.stars_yellow, bold = true },
  }

  -- Plugins
  -- Git highlighting
  local git = {
    DiffAdd = { fg = colors.stars_green_dark, bg = colors.stars_black_grey },
    DiffChange = { fg = colors.stars_blue_dark, bg = colors.stars_black_grey },
    DiffDelete = { fg = colors.stars_red_dark, bg = colors.stars_black_grey },
    DiffText = { fg = colors.stars_yellow, bg = colors.stars_black_grey },
    
    GitSignsAdd = { fg = colors.stars_green },
    GitSignsChange = { fg = colors.stars_blue },
    GitSignsDelete = { fg = colors.stars_red },
  }

  -- Treesitter highlighting
  local treesitter = {
    TSAnnotation = { fg = colors.stars_yellow },
    TSAttribute = { fg = colors.stars_blue },
    TSBoolean = { fg = colors.stars_yellow_dark, bold = true },
    TSCharacter = { fg = colors.stars_green_dark },
    TSComment = { fg = colors.stars_black_neutral, italic = true },
    TSConditional = { fg = colors.stars_red },
    TSConstant = { fg = colors.stars_blue_light },
    TSConstBuiltin = { fg = colors.stars_blue_light, italic = true },
    TSConstMacro = { fg = colors.stars_blue_light, bold = true },
    TSConstructor = { fg = colors.stars_blue_dark },
    TSError = { fg = colors.stars_red_light },
    TSException = { fg = colors.stars_red_light },
    TSField = { fg = colors.stars_white },
    TSFloat = { fg = colors.poker_gold },
    TSFunction = { fg = colors.stars_red },
    TSFuncBuiltin = { fg = colors.stars_red, italic = true },
    TSFuncMacro = { fg = colors.stars_red, bold = true },
    TSInclude = { fg = colors.poker_purple },
    TSKeyword = { fg = colors.stars_red_dark },
    TSKeywordFunction = { fg = colors.stars_red_dark },
    TSKeywordOperator = { fg = colors.stars_red },
    TSLabel = { fg = colors.stars_yellow },
    TSMethod = { fg = colors.stars_red },
    TSNamespace = { fg = colors.stars_blue_dark },
    TSNone = { fg = colors.stars_white },
    TSNumber = { fg = colors.poker_gold },
    TSOperator = { fg = colors.stars_white },
    TSParameter = { fg = colors.stars_white_dark },
    TSParameterReference = { fg = colors.stars_white_dark, italic = true },
    TSProperty = { fg = colors.stars_white },
    TSPunctDelimiter = { fg = colors.stars_white_dark },
    TSPunctBracket = { fg = colors.stars_white_dark },
    TSPunctSpecial = { fg = colors.stars_white_dark },
    TSRepeat = { fg = colors.stars_red },
    TSString = { fg = colors.stars_green },
    TSStringRegex = { fg = colors.stars_green_dark },
    TSStringEscape = { fg = colors.stars_green_dark, bold = true },
    TSSymbol = { fg = colors.stars_yellow },
    TSTag = { fg = colors.stars_green },
    TSTagDelimiter = { fg = colors.stars_white_dark },
    TSText = { fg = colors.stars_white_dark },
    TSStrong = { bold = true },
    TSEmphasis = { italic = true },
    TSUnderline = { underline = true },
    TSStrike = { strikethrough = true },
    TSTitle = { fg = colors.stars_red, bold = true },
    TSLiteral = { fg = colors.stars_green },
    TSURI = { fg = colors.stars_blue, underline = true },
    TSMath = { fg = colors.stars_yellow_dark },
    TSTextReference = { fg = colors.stars_yellow },
    TSEnvironment = { fg = colors.stars_blue_dark },
    TSEnvironmentName = { fg = colors.stars_green_dark },
    TSNote = { fg = colors.stars_green, bg = colors.stars_black_grey, bold = true },
    TSWarning = { fg = colors.stars_yellow_dark, bg = colors.stars_black_grey, bold = true },
    TSDanger = { fg = colors.stars_red_light, bg = colors.stars_black_grey, bold = true },
    TSType = { fg = colors.stars_blue },
    TSTypeBuiltin = { fg = colors.stars_blue, italic = true },
    TSVariable = { fg = colors.stars_white_dark },
    TSVariableBuiltin = { fg = colors.stars_white_dark, italic = true },
  }

  -- Apply all highlights
  local groups = vim.tbl_extend("force", editor, syntax, git, treesitter)
  
  for group, attrs in pairs(groups) do
    vim.api.nvim_set_hl(0, group, attrs)
  end
end

return M