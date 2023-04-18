(require-macros :macros)

;; You can use the `colorscheme` macro to load a custom theme, or load it manually
;; via require. This is the default:

(set! background :dark)
(colorscheme eunoia)

;; The set! macro sets vim.opt options. By default it sets the option to true 
;; Appending `no` in front sets it to false. This determines the style of line 
;; numbers in effect. If set to nonumber, line numbers are disabled. For 
;; relative line numbers, set 'relativenumber`

(set! nonumber)
(set! nocursorline)

;; The let option sets global, or `vim.g` options. 
;; Heres an example with localleader, setting it to <space>m

(let! maplocalleader ",")

;; map! is used for mappings
;; Heres an example, preseing esc should also remove search highlights

(map! [n] :<esc> :<esc><cmd>noh<cr> {:desc "No highlight escape"})
