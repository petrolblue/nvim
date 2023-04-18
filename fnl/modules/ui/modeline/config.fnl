(import-macros {: nyoom-module-p! : set! : vlua : autocmd! : packadd!} :macros)

;; modeline

(local modes {:n :RW
              :no :RO
              :v "**"
              :V "**"
              "" "**"
              :s :S
              :S :SL
              "" :SB
              :i "**"
              :ic "**"
              :R :RA
              :Rv :RV
              :c :VIEX
              :cv :VIEX
              :ce :EX
              :r :r
              :rm :r
              :r? :r
              :! :SHELL
              :t :TERM})

;; by default these can be blank:

(fn get-filetype []
  (.. "%#NormalNC#" vim.bo.filetype))

(fn get-bufnr []
  (.. "%#NormalNC#" (vim.api.nvim_get_current_buf)))

(fn color []
  (let [mode (. (vim.api.nvim_get_mode) :mode)]
    (var mode-color "%#Normal#")
    (if (= mode :n) (set mode-color "%#StatusNormal#")
        (or (= mode :i) (= mode :ic)) (set mode-color "%#StatusInsert#")
        (or (or (= mode :v) (= mode :V)) (= mode "\022"))
        (set mode-color "%#StatusVisual#") (= mode :R)
        (set mode-color "%#StatusReplace#") (= mode :c)
        (set mode-color "%#StatusCommand#") (= mode :t)
        (set mode-color "%#StatusTerminal#"))
    mode-color))

(fn get-fileinfo []
  (var filename (or (and (= (vim.fn.expand "%") "") " nyoom-nvim v0.6.0-dev")
                    (vim.fn.expand "%:t")))
  (when (not= filename " nyoom-nvim ")
    (set filename (.. " " filename " ")))
  (.. "%#Normal#" filename "%#NormalNC#"))

(fn get-searchcount []
  (when (= vim.v.hlsearch 0)
    (lua "return \"%#Normal# %l:%c \""))
  (local (ok count) (pcall vim.fn.searchcount {:recompute true}))
  (when (or (or (not ok) (= count.current nil)) (= count.total 0))
    (lua "return \"\""))
  (when (= count.incomplete 1)
    (lua "return \"?/?\""))
  (local too-many (: ">%d" :format count.maxcount))
  (local total (or (and (> count.total count.maxcount) too-many) count.total))
  (.. "%#Normal#" (: " %s matches " :format total)))

(global Statusline {})
(set Statusline.statusline
     (fn []
       (table.concat [(color)
                      (: (string.format " %s "
                                        (. modes
                                           (. (vim.api.nvim_get_mode) :mode)))
                         :upper)
                      (get-fileinfo)
                      (get-bufnr)
                      "%="
                      (get-filetype)
                      (get-searchcount)])))

(set! laststatus 3)
(set! cmdheight 0)
(set! statusline (.. "%!" (vlua Statusline.statusline)))