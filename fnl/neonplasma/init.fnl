;;                               O X O C A R B O N
;;        _..._         _..._         _..._         _..._         _..._
;;      .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
;;     :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
;;     :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
;;     `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
;;       `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
;;
;;   Colorscheme name:    neonplasma themeing system
;;   Description:         Neovim Colorschemes based on base16 in fennel made with (hs)luv <3
;;   Author:              https://github.com/shaunsingh

(local {: blend-hex} (require :neonplasma.colorutils))

;; utilities

(macro let! [...]
  (fn let-with-scope! [[scope] name value]
    (let [name (tostring name)
          scope (tostring scope)]
      `(tset ,(match scope
                :b `vim.b
                :w `vim.w
                :t `vim.t
                :g `vim.g) ,name ,value)))

  (match [...]
    [[scope] name value] (let-with-scope! [scope] name value)
    [name value] (let-with-scope! [:g] name value)
    _ (error "expected let! to have at least two arguments: name value")))

(macro set! [option]
  (let [option (tostring option)]
    `(tset vim.o ,option true)))

(macro custom-set-face! [name attributes colors]
  (let [definition (collect [_ attr (ipairs attributes) &into colors]
                     (tostring attr)
                     true)]
    `(vim.api.nvim_set_hl 0 ,name ,definition)))

;; reset variables

(when vim.g.colors_name
  (vim.cmd.hi :clear))

;; set defaults

(let! colors_name :neonplasma)
(set! termguicolors)

;; neonplasma palette

(local base00 "#161616")
(local base06 "#ffffff")
(local base09 "#78a9ff")

(local neonplasma (or (and (= vim.o.background :dark)
                          {: base00
                           :base01 (blend-hex base00 base06 0.085)
                           :base02 (blend-hex base00 base06 0.18)
                           :base03 (blend-hex base00 base06 0.3)
                           :base04 (blend-hex base00 base06 0.82)
                           :base05 (blend-hex base00 base06 0.95)
                           : base06
                           :base07 "#08bdba"
                           :base08 "#3ddbd9"
                           : base09
                           :base10 "#ee5396"
                           :base11 "#33b1ff"
                           :base12 "#ff7eb6"
                           :base13 "#42be65"
                           :base14 "#be95ff"
                           :base15 "#82cfff"
                           :blend "#131313"
                           :none :NONE})
                     {:base00 base06
                      :base01 (blend-hex base00 base06 0.95)
                      :base02 (blend-hex base00 base06 0.82)
                      :base03 base00
                      :base04 "#37474F"
                      :base05 "#90A4AE"
                      :base06 "#525252"
                      :base07 "#08bdba"
                      :base08 "#ff7eb6"
                      :base09 "#ee5396"
                      :base10 "#FF6F00"
                      :base11 "#0f62fe"
                      :base12 "#673AB7"
                      :base13 "#42be65"
                      :base14 "#be95ff"
                      :base15 "#FFAB91"
                      :blend "#FAFAFA"
                      :none :NONE}))

;; terminal

(let! terminal_color_0 neonplasma.none)
(let! terminal_color_1 neonplasma.base11)
(let! terminal_color_2 neonplasma.base14)
(let! terminal_color_3 neonplasma.base13)
(let! terminal_color_4 neonplasma.base09)
(let! terminal_color_5 neonplasma.base15)
(let! terminal_color_6 neonplasma.base08)
(let! terminal_color_7 neonplasma.base05)
(let! terminal_color_8 neonplasma.base03)
(let! terminal_color_9 neonplasma.base11)
(let! terminal_color_10 neonplasma.base14)
(let! terminal_color_11 neonplasma.base13)
(let! terminal_color_12 neonplasma.base09)
(let! terminal_color_13 neonplasma.base15)
(let! terminal_color_14 neonplasma.base07)
(let! terminal_color_15 neonplasma.base06)

;; editor

(custom-set-face! :ColorColumn [] {:fg neonplasma.none :bg neonplasma.base01})
(custom-set-face! :Cursor [] {:fg neonplasma.base00 :bg neonplasma.base04})
(custom-set-face! :CursorLine [] {:fg neonplasma.none :bg neonplasma.base01})
(custom-set-face! :CursorColumn [] {:fg neonplasma.none :bg neonplasma.base01})
(custom-set-face! :CursorLineNr [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :QuickFixLine [] {:fg neonplasma.none :bg neonplasma.base01})
(custom-set-face! :Error [] {:fg neonplasma.base10 :bg neonplasma.base01})
(custom-set-face! :LineNr [] {:fg neonplasma.base03 :bg neonplasma.base00})
(custom-set-face! :NonText [] {:fg neonplasma.base02 :bg neonplasma.none})
(custom-set-face! :Normal [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :Pmenu [] {:fg neonplasma.base04 :bg neonplasma.base01})
(custom-set-face! :PmenuSbar [] {:fg neonplasma.base04 :bg neonplasma.base01})
(custom-set-face! :PmenuSel [] {:fg neonplasma.base08 :bg neonplasma.base02})
(custom-set-face! :PmenuThumb [] {:fg neonplasma.base08 :bg neonplasma.base02})
(custom-set-face! :SpecialKey [] {:fg neonplasma.base03 :bg neonplasma.none})
(custom-set-face! :Visual [] {:fg neonplasma.none :bg neonplasma.base02})
(custom-set-face! :VisualNOS [] {:fg neonplasma.none :bg neonplasma.base02})
(custom-set-face! :TooLong [] {:fg neonplasma.none :bg neonplasma.base02})
(custom-set-face! :Debug [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :Macro [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! :MatchParen [:underline]
                  {:fg neonplasma.none :bg neonplasma.base02})
(custom-set-face! :Bold [:bold] {:fg neonplasma.none :bg neonplasma.none})
(custom-set-face! :Italic [:italic] {:fg neonplasma.none :bg neonplasma.none})
(custom-set-face! :Underlined [:underline]
                  {:fg neonplasma.none :bg neonplasma.none})

;; diagnostics

(custom-set-face! :DiagnosticWarn [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :DiagnosticError [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :DiagnosticInfo [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :DiagnosticHint [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :DiagnosticUnderlineWarn [:undercurl]
                  {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :DiagnosticUnderlineError [:undercurl]
                  {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :DiagnosticUnderlineInfo [:undercurl]
                  {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :DiagnosticUnderlineHint [:undercurl]
                  {:fg neonplasma.base04 :bg neonplasma.none})

;; health
(custom-set-face! :HealthError [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :HealthWarning [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :HealthSuccess [] {:fg neonplasma.base13 :bg neonplasma.none})

;; ledger

(custom-set-face! "@comment" [] {:link "Comment"})
(custom-set-face! "@text.literal.commodity" [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! "@number" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@number.date" [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! "@number.date.effective" [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! "@number.interval" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@number.status" [] {:fg neonplasma.base12 :bg neonplasma.none})
(custom-set-face! "@number.quantity" [] {:fg neonplasma.base11 :bg neonplasma.none})
(custom-set-face! "@number.quantity.negative" [] {:fg neonplasma.base10 :bg neonplasma.none})

;; lsp

(custom-set-face! :LspReferenceText [] {:fg neonplasma.none :bg neonplasma.base03})
(custom-set-face! :LspReferenceread [] {:fg neonplasma.none :bg neonplasma.base03})
(custom-set-face! :LspReferenceWrite [] {:fg neonplasma.none :bg neonplasma.base03})
(custom-set-face! :LspSignatureActiveParameter [] {:fg neonplasma.base08 :bg neonplasma.none})

;; lps-semantic-tokens
(custom-set-face! "@lsp.type.class" [] {:link "Structure"})
(custom-set-face! "@lsp.type.decorator" [] {:link "Decorator"})
(custom-set-face! "@lsp.type.function" [] {:link "@function"})
(custom-set-face! "@lsp.type.macro" [] {:link "Macro"})
(custom-set-face! "@lsp.type.method" [] {:link "@function"})
(custom-set-face! "@lsp.type.struct" [] {:link "Structure"})
(custom-set-face! "@lsp.type.type" [] {:link "Type"})
(custom-set-face! "@lsp.type.typeParameter" [] {:link "Typedef"})
(custom-set-face! "@lsp.type.selfParameter" [] {:link "@variable.builtin"})
(custom-set-face! "@lsp.type.builtinConstant" [] {:link "@constant.builtin"})
(custom-set-face! "@lsp.type.magicFunction" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.type.boolean" [] {:link "@boolean"})
(custom-set-face! "@lsp.type.builtinType" [] {:link "@type.builtin"})
(custom-set-face! "@lsp.type.comment" [] {:link "@comment"})
(custom-set-face! "@lsp.type.enum" [] {:link "@type"})
(custom-set-face! "@lsp.type.enumMember" [] {:link "@constant"})
(custom-set-face! "@lsp.type.escapeSequence" [] {:link "@string.escape"})
(custom-set-face! "@lsp.type.formatSpecifier" [] {:link "@punctuation.special"})
;;(custom-set-face! "@lsp.type.interface" [] {})
(custom-set-face! "@lsp.type.keyword" [] {:link "@keyword"})
(custom-set-face! "@lsp.type.namespace" [] {:link "@namespace"})
(custom-set-face! "@lsp.type.number" [] {:link "@number"})
(custom-set-face! "@lsp.type.operator" [] {:link "@operator"})
(custom-set-face! "@lsp.type.parameter" [] {:link "@parameter"})
(custom-set-face! "@lsp.type.property" [] {:link "@property"})
(custom-set-face! "@lsp.type.selfKeyword" [] {:link "@variable.builtin"})
(custom-set-face! "@lsp.type.string.rust" [] {:link "@string"})
(custom-set-face! "@lsp.type.typeAlias" [] {:link "@type.definition"})
(custom-set-face! "@lsp.type.unresolvedReference" [] {:link "Error"})
(custom-set-face! "@lsp.type.variable" [] {:link "@variable"} )
(custom-set-face! "@lsp.mod.readonly" [] {:link "@constant"})
(custom-set-face! "@lsp.mod.typeHint" [] {:link "Type"})
(custom-set-face! "@lsp.mod.builtin" [] {:link "Special"})
(custom-set-face! "@lsp.typemod.class.defaultLibrary" [] {:link "@type.builtin"})
(custom-set-face! "@lsp.typemod.enum.defaultLibrary" [] {:link "@type.builtin"})
(custom-set-face! "@lsp.typemod.enumMember.defaultLibrary" [] {:link "@constant.builtin"})
(custom-set-face! "@lsp.typemod.function.defaultLibrary" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.keyword.async" [] {:link "@keyword.coroutine"})
(custom-set-face! "@lsp.typemod.macro.defaultLibrary" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.method.defaultLibrary" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.operator.injected" [] {:link "@operator"})
(custom-set-face! "@lsp.typemod.string.injected" [] {:link "@string"})
(custom-set-face! "@lsp.typemod.operator.controlFlow" [] {:link "@exception"})
(custom-set-face! "@lsp.typemod.keyword.documentation" [] {:link "Special"})
(custom-set-face! "@lsp.typemod.variable.global" [] {:link "@constant"})
(custom-set-face! "@lsp.typemod.variable.static" [] {:link "@constant"})
(custom-set-face! "@lsp.typemod.variable.defaultLibrary" [] {:link "Special"})
(custom-set-face! "@lsp.typemod.function.builtin" [] {:link "@function.builtin"})
(custom-set-face! "@lsp.typemod.function.readonly" [] {:link "@method"})
;;(custom-set-face! "@lsp.typemod.type.defaultLibrary" [] {})
(custom-set-face! "@lsp.typemod.variable.defaultLibrary" [] {:link "@variable.builtin"})
(custom-set-face! "@lsp.typemod.variable.injected" [] {:link "@variable"})

;; gutter

(custom-set-face! :Folded [] {:fg neonplasma.base02 :bg neonplasma.base01})
(custom-set-face! :FoldColumn [] {:fg neonplasma.base01 :bg neonplasma.base00})
(custom-set-face! :SignColumn [] {:fg neonplasma.base01 :bg neonplasma.base00})

;; navigation

(custom-set-face! :Directory [] {:fg neonplasma.base08 :bg neonplasma.none})

;; prompts

(custom-set-face! :EndOfBuffer [] {:fg neonplasma.base01 :bg neonplasma.none})
(custom-set-face! :ErrorMsg [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :ModeMsg [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :MoreMsg [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :Question [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :Substitute [] {:fg neonplasma.base01 :bg neonplasma.base08})
(custom-set-face! :WarningMsg [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :WildMenu [] {:fg neonplasma.base08 :bg neonplasma.base01})

;; vimhelp

(custom-set-face! :helpHyperTextJump []
                  {:fg neonplasma.base08 :bg neonplasma.none})

(custom-set-face! :helpSpecial [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :helpHeadline [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :helpHeader [] {:fg neonplasma.base15 :bg neonplasma.none})

;; diff

(custom-set-face! :DiffAdded [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! :DiffChanged [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :DiffRemoved [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :DiffAdd [] {:bg "#122f2f" :fg neonplasma.none})
(custom-set-face! :DiffChange [] {:bg "#222a39" :fg neonplasma.none})
(custom-set-face! :DiffText [] {:bg "#2f3f5c" :fg neonplasma.none})
(custom-set-face! :DiffDelete [] {:bg "#361c28" :fg neonplasma.none})

;; search

(custom-set-face! :IncSearch [] {:fg neonplasma.base06 :bg neonplasma.base10})
(custom-set-face! :Search [] {:fg neonplasma.base01 :bg neonplasma.base08})

;; tabs

(custom-set-face! :TabLine [] {:link "StatusLineNC"})
(custom-set-face! :TabLineFill [] {:link "TabLine"})
(custom-set-face! :TabLineSel [] {:link "StatusLine"})

;; window

(custom-set-face! :Title [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :VertSplit [] {:fg neonplasma.base01 :bg neonplasma.base00})

;; regular syntax

(custom-set-face! :Boolean [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Character [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :Comment [:italic]
                  {:fg neonplasma.base03 :bg neonplasma.none})
(custom-set-face! :Conceal [] {:fg neonplasma.none :bg neonplasma.none})
(custom-set-face! :Conditional [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Constant [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :Decorator [] {:fg neonplasma.base12 :bg neonplasma.none})
(custom-set-face! :Define [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Delimeter [] {:fg neonplasma.base06 :bg neonplasma.none})
(custom-set-face! :Exception [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Float [] {:link "Number"})
(custom-set-face! :Function [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :Identifier [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :Include [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Keyword [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Label [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Number [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! :Operator [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :PreProc [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Repeat [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Special [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :SpecialChar [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :SpecialComment [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :Statement [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :StorageClass [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :String [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :Structure [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Tag [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :Todo [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :Type [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :Typedef [] {:fg neonplasma.base09 :bg neonplasma.none})

;; markdown

(custom-set-face! :markdownBlockquote []
                  {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :markdownBold [] {:link "Bold"})
(custom-set-face! :markdownItalic [] {:link "Italic"})
(custom-set-face! :markdownBoldItalic [:bold :italic]
                  {:fg neonplasma.none :bg neonplasma.none})
(custom-set-face! :markdownRule [] {:link "Comment"})
(custom-set-face! :markdownH1 [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :markdownH2 [] {:link "markdownH1"})
(custom-set-face! :markdownH3 [] {:link "markdownH1"})
(custom-set-face! :markdownH4 [] {:link "markdownH1"})
(custom-set-face! :markdownH5 [] {:link "markdownH1"})
(custom-set-face! :markdownH6 [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingDelimiter [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingRule [] {:link "markdownH1"})
(custom-set-face! :markdownUrl [:underline]
                  {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :markdownCode [] {:link "String"})
(custom-set-face! :markdownCodeBlock [] {:link "markdownCode"})
(custom-set-face! :markdownCodeDelimiter [] {:link "markdownCode"})
(custom-set-face! :markdownUrl [] {:link "String"})
(custom-set-face! :markdownListMarker []
                  {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :markdownOrderedListMarker []
                  {:fg neonplasma.base08 :bg neonplasma.none})

;; asciidoc

(custom-set-face! :asciidocAttributeEntry [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! :asciidocAttributeList [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocAttributeRef [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocHLabel [] {:link "markdownH1"})
(custom-set-face! :asciidocOneLineTitle [] {:link "markdownH1"})
(custom-set-face! :asciidocQuotedMonospaced [] {:link "markdownBlockquote"})
(custom-set-face! :asciidocURL [] {:link "markdownUrl"})

;; treesitter
;;; misc

(custom-set-face! "@comment" [] {:link "Comment"})
(custom-set-face! "@error" [] {:fg neonplasma.base11 :bg neonplasma.none})

;; @none
;; @preproc
;; @define

(custom-set-face! "@operator" [] {:link "Operator"})

;;; punctuation

(custom-set-face! "@punctuation.delimiter" [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! "@punctuation.bracket" [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! "@punctuation.special" [] {:fg neonplasma.base08 :bg neonplasma.none})

;;; literals

(custom-set-face! "@string" [] {:link "String"})
(custom-set-face! "@string.regex" [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! "@string.escape" [] {:fg neonplasma.base15 :bg neonplasma.none})

;; @string.special

(custom-set-face! "@character" [] {:link "Character"})

;; @character.special

(custom-set-face! "@boolean" [] {:link "Boolean"})
(custom-set-face! "@number" [] {:link "Number"})
(custom-set-face! "@float" [] {:link "Float"})

;;; functions

(custom-set-face! "@function" [:bold]
                  {:fg neonplasma.base12 :bg neonplasma.none})
(custom-set-face! "@function.builtin" [] {:fg neonplasma.base12 :bg neonplasma.none})

;; @function.call

(custom-set-face! "@function.macro" [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! "@method" [] {:fg neonplasma.base07 :bg neonplasma.none})

;; @method.call

(custom-set-face! "@constructor" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@parameter" [] {:fg neonplasma.base04 :bg neonplasma.none})

;;; keywords

(custom-set-face! "@keyword" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@keyword.function" [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! "@keyword.operator" [] {:fg neonplasma.base08 :bg neonplasma.none})

;; @keyword.return

(custom-set-face! "@conditional" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@repeat" [] {:fg neonplasma.base09 :bg neonplasma.none})

;; @debug

(custom-set-face! "@label" [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! "@include" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@exception" [] {:fg neonplasma.base15 :bg neonplasma.none})

;;; types

(custom-set-face! "@type" [] {:link "Type"})
(custom-set-face! "@type.builtin" [] {:link "Type"})

;; @type.defintion
;; @type.qualifier
;; @storageclass
;; @storageclass.lifetime

(custom-set-face! "@attribute" [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! "@field" [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! "@property" [] {:fg neonplasma.base10 :bg neonplasma.none})

;;; identifiers

(custom-set-face! "@variable" [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! "@variable.builtin" [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! "@constant" [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! "@constant.builtin" [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! "@constant.macro" [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! "@namespace" [] {:fg neonplasma.base07 :bg neonplasma.none})
(custom-set-face! "@symbol" [:bold]
                  {:fg neonplasma.base15 :bg neonplasma.none})

;;; text

(custom-set-face! "@text" [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! "@text.strong" [] {:fg neonplasma.none :bg neonplasma.none})
(custom-set-face! "@text.emphasis" [:bold]
                  {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! "@text.underline" [:underline]
                  {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! "@text.strike" [:strikethrough]
                  {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! "@text.title" [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! "@text.literal" [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! "@text.uri" [:underline]
                  {:fg neonplasma.base14 :bg neonplasma.none})

;; @text.math
;; @text.environment
;; @text.environment.name
;; @text.reference
;; @text.todo
;; @text.note
;; @text.warning
;; @text.danger
;; @text.diff.add
;; @text.diff.delete
;;; tags

(custom-set-face! "@tag" [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! "@tag.attribute" [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! "@tag.delimiter" [] {:fg neonplasma.base15 :bg neonplasma.none})

;;; Conceal
;; @conceal
;;; Spell
;; @spell
;; @nospell
;;; non-standard
;; @variable.global
;;; locals
;; @definition
;; @definition.constant
;; @definition.function
;; @definition.method
;; @definition.var
;; @definition.parameter
;; @definition.macro
;; @definition.type
;; @definition.field
;; @definition.enum
;; @definition.namespace
;; @definition.import
;; @definition.associated
;; @scope

(custom-set-face! "@reference" [] {:fg neonplasma.base04 :bg neonplasma.none})

;; neovim

(custom-set-face! :NvimInternalError [] {:fg neonplasma.base00 :bg neonplasma.base08})
(custom-set-face! :NormalFloat [] {:fg neonplasma.base05 :bg neonplasma.blend})
(custom-set-face! :FloatBorder [] {:fg neonplasma.blend :bg neonplasma.blend})
(custom-set-face! :NormalNC [] {:fg neonplasma.base05 :bg neonplasma.base00})
(custom-set-face! :TermCursor [] {:fg neonplasma.base00 :bg neonplasma.base04})
(custom-set-face! :TermCursorNC [] {:fg neonplasma.base00 :bg neonplasma.base04})

;; statusline/winbar

(custom-set-face! :StatusLine [] {:fg neonplasma.base04 :bg neonplasma.base00})
(custom-set-face! :StatusLineNC [] {:fg neonplasma.base04 :bg neonplasma.base01})
(custom-set-face! :StatusReplace [] {:fg neonplasma.base00 :bg neonplasma.base08})
(custom-set-face! :StatusInsert [] {:fg neonplasma.base00 :bg neonplasma.base12})
(custom-set-face! :StatusVisual [] {:fg neonplasma.base00 :bg neonplasma.base14})
(custom-set-face! :StatusTerminal [] {:fg neonplasma.base00 :bg neonplasma.base11})
(custom-set-face! :StatusNormal [] {:fg neonplasma.base00 :bg neonplasma.base15})
(custom-set-face! :StatusCommand [] {:fg neonplasma.base00 :bg neonplasma.base13})
(custom-set-face! :StatusLineDiagnosticWarn [:bold]
                  {:fg neonplasma.base14 :bg neonplasma.base00})
(custom-set-face! :StatusLineDiagnosticError [:bold]
                  {:fg neonplasma.base10 :bg neonplasma.base00})

;; telescope

(custom-set-face! :TelescopeBorder [] {:fg neonplasma.blend :bg neonplasma.blend})
(custom-set-face! :TelescopePromptBorder [] {:fg neonplasma.base02 :bg neonplasma.base02})
(custom-set-face! :TelescopePromptNormal [] {:fg neonplasma.base05 :bg neonplasma.base02})
(custom-set-face! :TelescopePromptPrefix [] {:fg neonplasma.base08 :bg neonplasma.base02})
(custom-set-face! :TelescopeNormal [] {:fg neonplasma.none :bg neonplasma.blend})
(custom-set-face! :TelescopePreviewTitle [] {:fg neonplasma.base02 :bg neonplasma.base12})
(custom-set-face! :TelescopePromptTitle [] {:fg neonplasma.base02 :bg neonplasma.base11})
(custom-set-face! :TelescopeResultsTitle [] {:fg neonplasma.blend :bg neonplasma.blend})
(custom-set-face! :TelescopeSelection [] {:fg neonplasma.none :bg neonplasma.base02})
(custom-set-face! :TelescopePreviewLine [] {:fg neonplasma.none :bg neonplasma.base01})
(custom-set-face! :TelescopeMatching [:bold :italic] {:fg neonplasma.base08 :bg neonplasma.none})

;; notify

(custom-set-face! :NotifyERRORBorder [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :NotifyWARNBorder [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :NotifyINFOBorder [] {:fg neonplasma.base05 :bg neonplasma.none})
(custom-set-face! :NotifyDEBUGBorder [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :NotifyTRACEBorder [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :NotifyERRORIcon [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :NotifyWARNIcon [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :NotifyINFOIcon [] {:fg neonplasma.base05 :bg neonplasma.none})
(custom-set-face! :NotifyDEBUGIcon [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :NotifyTRACEIcon [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :NotifyERRORTitle [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :NotifyWARNTitle [] {:fg neonplasma.base14 :bg neonplasma.none})
(custom-set-face! :NotifyINFOTitle [] {:fg neonplasma.base05 :bg neonplasma.none})
(custom-set-face! :NotifyDEBUGTitle [] {:fg neonplasma.base13 :bg neonplasma.none})
(custom-set-face! :NotifyTRACETitle [] {:fg neonplasma.base13 :bg neonplasma.none})

;; cmp

(custom-set-face! :CmpItemAbbr [] {:fg "#adadad" :bg neonplasma.none})
(custom-set-face! :CmpItemAbbrMatch [:bold]
                  {:fg neonplasma.base05 :bg neonplasma.none})
(custom-set-face! :CmpItemAbbrMatchFuzzy [:bold]
                  {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :CmpItemMenu [:italic]
                  {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :CmpItemKindInterface [] {:fg neonplasma.base01 :bg neonplasma.base08})
(custom-set-face! :CmpItemKindColor [] {:fg neonplasma.base01 :bg neonplasma.base08})
(custom-set-face! :CmpItemKindTypeParameter [] {:fg neonplasma.base01 :bg neonplasma.base08})
(custom-set-face! :CmpItemKindText [] {:fg neonplasma.base01 :bg neonplasma.base09})
(custom-set-face! :CmpItemKindEnum [] {:fg neonplasma.base01 :bg neonplasma.base09})
(custom-set-face! :CmpItemKindKeyword [] {:fg neonplasma.base01 :bg neonplasma.base09})
(custom-set-face! :CmpItemKindConstant [] {:fg neonplasma.base01 :bg neonplasma.base10})
(custom-set-face! :CmpItemKindConstructor [] {:fg neonplasma.base01 :bg neonplasma.base10})
(custom-set-face! :CmpItemKindReference [] {:fg neonplasma.base01 :bg neonplasma.base10})
(custom-set-face! :CmpItemKindFunction [] {:fg neonplasma.base01 :bg neonplasma.base11})
(custom-set-face! :CmpItemKindStruct [] {:fg neonplasma.base01 :bg neonplasma.base11})
(custom-set-face! :CmpItemKindClass [] {:fg neonplasma.base01 :bg neonplasma.base11})
(custom-set-face! :CmpItemKindModule [] {:fg neonplasma.base01 :bg neonplasma.base11})
(custom-set-face! :CmpItemKindOperator [] {:fg neonplasma.base01 :bg neonplasma.base11})
(custom-set-face! :CmpItemKindField [] {:fg neonplasma.base01 :bg neonplasma.base12})
(custom-set-face! :CmpItemKindProperty [] {:fg neonplasma.base01 :bg neonplasma.base12})
(custom-set-face! :CmpItemKindEvent [] {:fg neonplasma.base01 :bg neonplasma.base12})
(custom-set-face! :CmpItemKindUnit [] {:fg neonplasma.base01 :bg neonplasma.base13})
(custom-set-face! :CmpItemKindSnippet [] {:fg neonplasma.base01 :bg neonplasma.base13})
(custom-set-face! :CmpItemKindFolder [] {:fg neonplasma.base01 :bg neonplasma.base13})
(custom-set-face! :CmpItemKindVariable [] {:fg neonplasma.base01 :bg neonplasma.base14})
(custom-set-face! :CmpItemKindFile [] {:fg neonplasma.base01 :bg neonplasma.base14})
(custom-set-face! :CmpItemKindMethod [] {:fg neonplasma.base01 :bg neonplasma.base15})
(custom-set-face! :CmpItemKindValue [] {:fg neonplasma.base01 :bg neonplasma.base15})
(custom-set-face! :CmpItemKindEnumMember [] {:fg neonplasma.base01 :bg neonplasma.base15})

;; nvimtree

(custom-set-face! :NvimTreeImageFile [] {:fg neonplasma.base12 :bg neonplasma.none})
(custom-set-face! :NvimTreeFolderIcon [] {:fg neonplasma.base12 :bg neonplasma.none})
(custom-set-face! :NvimTreeWinSeparator [] {:fg neonplasma.base00 :bg neonplasma.base00})
(custom-set-face! :NvimTreeFolderName [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :NvimTreeIndentMarker [] {:fg neonplasma.base02 :bg neonplasma.none})
(custom-set-face! :NvimTreeEmptyFolderName [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! :NvimTreeOpenedFolderName [] {:fg neonplasma.base15 :bg neonplasma.none})
(custom-set-face! :NvimTreeNormal [] {:fg neonplasma.base04 :bg neonplasma.base00})

;; neogit

(custom-set-face! :NeogitBranch [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :NeogitRemote [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :NeogitHunkHeader [] {:fg neonplasma.base04 :bg neonplasma.base02})
(custom-set-face! :NeogitHunkHeaderHighlight [] {:fg neonplasma.base04 :bg neonplasma.base03})

;; hydra

(custom-set-face! :HydraRed [] {:fg neonplasma.base12 :bg neonplasma.none})
(custom-set-face! :HydraBlue [] {:fg neonplasma.base09 :bg neonplasma.none})
(custom-set-face! :HydraAmaranth [] {:fg neonplasma.base10 :bg neonplasma.none})
(custom-set-face! :HydraTeal [] {:fg neonplasma.base08 :bg neonplasma.none})
(custom-set-face! :HydraHint [] {:fg neonplasma.none :bg neonplasma.blend})

;; alpha

(custom-set-face! :alpha1 [] {:fg neonplasma.base03 :bg neonplasma.none})
(custom-set-face! :alpha2 [] {:fg neonplasma.base04 :bg neonplasma.none})
(custom-set-face! :alpha3 [] {:fg neonplasma.base03 :bg neonplasma.none})

;; headlines.nvim

(custom-set-face! :CodeBlock [] {:fg neonplasma.none :bg neonplasma.base01})

;; nvim-bufferline

(custom-set-face! :BufferLineDiagnostic [:bold]
                  {:fg neonplasma.base10 :bg neonplasma.none})

(custom-set-face! :BufferLineDiagnosticVisible [:bold]
                  {:fg neonplasma.base10 :bg neonplasma.none})

;; preservim/vim-markdown

(custom-set-face! :htmlH1 [] {:link "markdownH1"})
(custom-set-face! :mkdRule [] {:link "markdownRule"})
(custom-set-face! :mkdListItem [] {:link "markdownListMarker"})
(custom-set-face! :mkdListItemCheckbox [] {:link "markdownListMarker"})

;; vimwiki/vimwiki

(custom-set-face! :VimwikiHeader1 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader2 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader3 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader4 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader5 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader6 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeaderChar [] {:link "markdownH1"})
(custom-set-face! :VimwikiList [] {:link "markdownListMarker"})
(custom-set-face! :VimwikiLink [] {:link "markdownUrl"})
(custom-set-face! :VimwikiCode [] {:link "markdownCode"})

{ : neonplasma }
