((block_macro
  (block_macro_name)
  (target) @injection.content)
  (#set! injection.language "asciidoc_inline"))

((table_cell
  (table_cell_content) @injection.content)
  (#set! injection.language "asciidoc_inline"))

((paragraph) @injection.content
  (#set! injection.include-children)
  (#set! injection.language "asciidoc_inline"))

((line) @injection.content
  (#set! injection.include-children)
  (#set! injection.language "asciidoc_inline"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @injection.language
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @injection.language
    "a2s" "barcode" "blockdiag" "bpmn" "bytefield" "d2" "dbml" "diagrams" "ditaa" "dpic" "erd"
    "gnuplot" "graphviz" "lilypond" "meme" "mermaid" "msc" "nomnoml" "pikchr" "plantuml" "shaape"
    "smcat" "structurizr" "svgbob" "symbolator" "syntrax" "tikz" "umlet" "vega" "wavedrom"))

; Source blocks with "source,<language>" format - common programming languages
((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,python" "python")
  (#set! injection.language "python"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,javascript" "source,js" "javascript" "js")
  (#set! injection.language "javascript"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,typescript" "source,ts" "typescript" "ts")
  (#set! injection.language "typescript"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,rust" "rust" "source,rs" "rs")
  (#set! injection.language "rust"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,go" "source,golang" "go" "golang")
  (#set! injection.language "go"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,java" "java")
  (#set! injection.language "java"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,c" "c")
  (#set! injection.language "c"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,cpp" "source,c++" "cpp" "c++")
  (#set! injection.language "cpp"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,ruby" "source,rb" "ruby" "rb")
  (#set! injection.language "ruby"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,bash" "source,sh" "source,shell" "bash" "sh" "shell")
  (#set! injection.language "bash"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,sql" "sql")
  (#set! injection.language "sql"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,json" "json")
  (#set! injection.language "json"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,yaml" "source,yml" "yaml" "yml")
  (#set! injection.language "yaml"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,html" "html")
  (#set! injection.language "html"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,css" "css")
  (#set! injection.language "css"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,lua" "lua")
  (#set! injection.language "lua"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,php" "php")
  (#set! injection.language "php"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,kotlin" "source,kt" "kotlin" "kt")
  (#set! injection.language "kotlin"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,scala" "scala")
  (#set! injection.language "scala"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,swift" "swift")
  (#set! injection.language "swift"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,haskell" "source,hs" "haskell" "hs")
  (#set! injection.language "haskell"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,elixir" "source,ex" "elixir" "ex")
  (#set! injection.language "elixir"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,clojure" "source,clj" "clojure" "clj")
  (#set! injection.language "clojure"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,ocaml" "source,ml" "ocaml" "ml")
  (#set! injection.language "ocaml"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,zig" "zig")
  (#set! injection.language "zig"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,nim" "nim")
  (#set! injection.language "nim"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,julia" "source,jl" "julia" "jl")
  (#set! injection.language "julia"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,r" "r")
  (#set! injection.language "r"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,perl" "source,pl" "perl" "pl")
  (#set! injection.language "perl"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,toml" "toml")
  (#set! injection.language "toml"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,xml" "xml")
  (#set! injection.language "xml"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,markdown" "source,md" "markdown" "md")
  (#set! injection.language "markdown"))

((section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @_lang
    (element_attr_marker))
  (listing_block
    (listing_block_start_marker)
    (listing_block_body) @injection.content
    (listing_block_end_marker)))
  (#any-of? @_lang "source,latex" "source,tex" "latex" "tex")
  (#set! injection.language "latex"))

(section_block
  (element_attr
    (element_attr_marker)
    (attr_value) @injection.language
    (element_attr_marker))
  (passthrough_block
    (passthrough_block_marker)
    (listing_block_body) @injection.content
    (passthrough_block_marker))
  (#any-of? @injection.language "latexmath")
  (#set! injection.language "latex"))
