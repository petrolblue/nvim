(import-macros {: nyoom!} :macros)

;; NOTE: TODO and FIXME modules still need work. WIP: modules work but may still be buggy

;; fnlfmt: skip
(nyoom! :completion
        (telescope +native)  ; the search engine of the future

        :config
        (default             ; Reasonable defaults for reasonable people
          +bindings 
          +which-key
          +smartparens)

        :editor
        fold                 ; (nigh) universal code folding
        (format +onsave)     ; automated prettiness
        parinfer             ; turn lisp into python, sort of
        (hotpot +reflect)    ; lets get cooking. NOTE: essential module (for now), don't disable
        scratch              ; emacs-like scratch buffer functionality
        word-wrap            ; language-aware smart soft and hard wrapping

        :lang
        cc                   ; C > C++ == 1
        clojure              ; java with a lisp
        common-lisp          ; if you've seen one lisp, you've seen them all
        lua                  ; one-based indices? one-based indices
        ;; markdown             ; writing docs for people to ignore
        python               ; beautiful is better than ugly
        sh                   ; she sells {ba,z,fi}sh shells on the C xor

        :term
        ;;fshell             ; WIP: the fennel shell that works everywhere
        toggleterm           ; persistant/floating terminal wrapper for :term
        
        :tools
        ;; debugger             ; stepping through code, to help you add bugs
        eval                 ; run code, run (also, repls)
        antifennel           ; for all the fennel haters out there. this ones for you
        (neogit              ; a git porclain for neovim
          +forge             ; Wield git like a wizard
          +diffview)         ; a git diff view for neovim
        rgb                  ; creating color strings
        tree-sitter          ; syntax and parsing, sitting in a tree... 

        :ui
        ;; (nyoom +modes +icons); what makes Nyoom look the way it does
        hydra                ; Discount modality for mythological beast hunters
        ;;indent-guides      ; highlighted indent columns
        modeline             ; snazzy, nano-emacs-inspired modeline
        ;;tabs               ; keep tabs on your buffers, literally
        vc-gutter            ; Get your diff out of the gutter
        window-select)
