(import-macros {: let! : nyoom-module-p!} :macros)

;; configuring clojure
(let! conjure#client#clojure#nrepl#eval#auto_require false)
(let! conjure#client#clojure#nrepl#connection#auto_repl#enabled false)
;; configuring scheme
(let! conjure#filetype#scheme "conjure.client.guile.socket")
(let! conjure#client#guile#socket#pipename ".guile-repl.socket")

(if (nyoom-module-p! lsp)
    (let! conjure#mapping#doc_word :gK)
    (let! conjure#mapping#doc_word :K))

(nyoom-module-p! tree-sitter (let! conjure#extract#tree_sitter#enabled true))
