module ETeX.KaTeX exposing (greekLetters, isKaTeX)

import Set exposing (Set)


isKaTeX : String -> Bool
isKaTeX command =
    Set.member command katexCommands


{-|

  - A set of all commands supported by KaTeX.
    This includes Greek letters, binary operators, relation symbols, arrows,
    delimiters, big operators, math functions, accents, fonts, spacing,
    logic and set theory symbols, miscellaneous symbols, fractions,
    binomials, roots, and text operators as defined in the KaTeX documentation.

    736 commands, all checked against KaTeX 0.16.9

    Left out on purpose, although KaTeX has them: names that are ordinary
    letters or words (P, R, S, it, set, real, empty, ...), delimiter sizes
    (left, right, big, ...), colors, font sizes, TeX primitives and HTML
    extensions. They still work when written with a backslash.

-}
katexCommands : Set String
katexCommands =
    Set.fromList
        (List.concat
            [ greekLetters
            , binaryOperators
            , relationSymbols
            , arrows
            , delimiters
            , bigOperators
            , mathFunctions
            , accents
            , fonts
            , spacing
            , logicAndSetTheory
            , miscSymbols
            , fractions
            , binomials
            , roots
            , dots
            , moreGreekLetters
            , moreSymbols
            , colons
            , extensibleArrows
            , moreFunctions
            , layout
            , braKet
            , textOperators
            ]
        )



-- Greek Letters


greekLetters : List String
greekLetters =
    [ -- Lowercase
      "alpha"
    , "beta"
    , "gamma"
    , "delta"
    , "epsilon"
    , "varepsilon"
    , "zeta"
    , "eta"
    , "theta"
    , "vartheta"
    , "iota"
    , "kappa"
    , "varkappa"
    , "lambda"
    , "mu"
    , "nu"
    , "xi"
    , "pi"
    , "varpi"
    , "rho"
    , "varrho"
    , "sigma"
    , "varsigma"
    , "tau"
    , "upsilon"
    , "phi"
    , "varphi"
    , "chi"
    , "psi"
    , "omega"

    -- Uppercase
    , "Gamma"
    , "Delta"
    , "Theta"
    , "Lambda"
    , "Xi"
    , "Pi"
    , "Sigma"
    , "Upsilon"
    , "Phi"
    , "Psi"
    , "Omega"

    -- Other
    , "digamma"
    , "varGamma"
    , "varDelta"
    , "varTheta"
    , "varLambda"
    , "varXi"
    , "varPi"
    , "varSigma"
    , "varUpsilon"
    , "varPhi"
    , "varPsi"
    , "varOmega"
    ]



-- Binary Operators


binaryOperators : List String
binaryOperators =
    [ "pm"
    , "mp"
    , "times"
    , "div"
    , "cdot"
    , "ast"
    , "star"
    , "circ"
    , "bullet"
    , "oplus"
    , "ominus"
    , "otimes"
    , "oslash"
    , "odot"
    , "dagger"
    , "ddagger"
    , "vee"
    , "lor"
    , "wedge"
    , "land"
    , "cap"
    , "cup"
    , "setminus"
    , "smallsetminus"
    , "triangleleft"
    , "triangleright"
    , "bigtriangleup"
    , "bigtriangledown"
    , "lhd"
    , "rhd"
    , "unlhd"
    , "unrhd"
    , "amalg"
    , "uplus"
    , "sqcap"
    , "sqcup"
    , "boxplus"
    , "boxminus"
    , "boxtimes"
    , "boxdot"
    , "leftthreetimes"
    , "rightthreetimes"
    , "curlyvee"
    , "curlywedge"
    , "dotplus"
    , "divideontimes"
    , "doublebarwedge"
    ]



-- Relation Symbols


relationSymbols : List String
relationSymbols =
    [ "leq"
    , "le"
    , "geq"
    , "ge"
    , "neq"
    , "ne"
    , "sim"
    , "simeq"
    , "approx"
    , "cong"
    , "equiv"
    , "prec"
    , "succ"
    , "preceq"
    , "succeq"
    , "ll"
    , "gg"
    , "subset"
    , "supset"
    , "subseteq"
    , "supseteq"
    , "nsubseteq"
    , "nsupseteq"
    , "sqsubset"
    , "sqsupset"
    , "sqsubseteq"
    , "sqsupseteq"
    , "in"
    , "ni"
    , "notin"
    , "notni"
    , "propto"
    , "varpropto"
    , "perp"
    , "parallel"
    , "nparallel"
    , "smile"
    , "frown"
    , "doteq"
    , "fallingdotseq"
    , "risingdotseq"
    , "coloneq"
    , "eqcirc"
    , "circeq"
    , "triangleq"
    , "bumpeq"
    , "Bumpeq"
    , "doteqdot"
    , "thicksim"
    , "thickapprox"
    , "approxeq"
    , "backsim"
    , "backsimeq"
    , "preccurlyeq"
    , "succcurlyeq"
    , "curlyeqprec"
    , "curlyeqsucc"
    , "precsim"
    , "succsim"
    , "precapprox"
    , "succapprox"
    , "vartriangleleft"
    , "vartriangleright"
    , "trianglelefteq"
    , "trianglerighteq"
    , "between"
    , "pitchfork"
    , "shortmid"
    , "shortparallel"
    , "therefore"
    , "because"
    , "eqcolon"
    , "simcolon"
    , "approxcolon"
    , "colonapprox"
    , "colonsim"
    , "ratio"
    ]



-- Arrows


arrows : List String
arrows =
    [ "leftarrow"
    , "gets"
    , "rightarrow"
    , "to"
    , "leftrightarrow"
    , "Leftarrow"
    , "Rightarrow"
    , "Leftrightarrow"
    , "iff"
    , "uparrow"
    , "downarrow"
    , "updownarrow"
    , "Uparrow"
    , "Downarrow"
    , "Updownarrow"
    , "mapsto"
    , "hookleftarrow"
    , "hookrightarrow"
    , "leftharpoonup"
    , "rightharpoonup"
    , "leftharpoondown"
    , "rightharpoondown"
    , "rightleftharpoons"
    , "longleftarrow"
    , "longrightarrow"
    , "longleftrightarrow"
    , "Longleftarrow"
    , "impliedby"
    , "Longrightarrow"
    , "implies"
    , "Longleftrightarrow"
    , "longmapsto"
    , "nearrow"
    , "searrow"
    , "swarrow"
    , "nwarrow"
    , "dashleftarrow"
    , "dashrightarrow"
    , "leftleftarrows"
    , "rightrightarrows"
    , "leftrightarrows"
    , "rightleftarrows"
    , "Lleftarrow"
    , "Rrightarrow"
    , "twoheadleftarrow"
    , "twoheadrightarrow"
    , "leftarrowtail"
    , "rightarrowtail"
    , "looparrowleft"
    , "looparrowright"
    , "curvearrowleft"
    , "curvearrowright"
    , "circlearrowleft"
    , "circlearrowright"
    , "multimap"
    , "leftrightsquigarrow"
    , "rightsquigarrow"
    , "leadsto"
    , "restriction"
    ]



-- Delimiters


delimiters : List String
delimiters =
    [ "lbrace"
    , "rbrace"
    , "lbrack"
    , "rbrack"
    , "langle"
    , "rangle"
    , "vert"
    , "Vert"
    , "lvert"
    , "rvert"
    , "lVert"
    , "rVert"
    , "lfloor"
    , "rfloor"
    , "lceil"
    , "rceil"
    , "lgroup"
    , "rgroup"
    , "lmoustache"
    , "rmoustache"
    , "ulcorner"
    , "urcorner"
    , "llcorner"
    , "lrcorner"
    ]



-- Big Operators


bigOperators : List String
bigOperators =
    [ "sum"
    , "prod"
    , "coprod"
    , "bigcup"
    , "bigcap"
    , "bigvee"
    , "bigwedge"
    , "bigoplus"
    , "bigotimes"
    , "bigodot"
    , "biguplus"
    , "bigsqcup"
    , "int"
    , "oint"
    , "iint"
    , "iiint"
    , "intop"
    , "smallint"
    ]



-- Math Functions


mathFunctions : List String
mathFunctions =
    [ "sin"
    , "cos"
    , "tan"
    , "cot"
    , "sec"
    , "csc"
    , "sinh"
    , "cosh"
    , "tanh"
    , "coth"
    , "arcsin"
    , "arccos"
    , "arctan"
    , "arctg"
    , "arcctg"
    , "ln"
    , "log"
    , "lg"
    , "exp"
    , "deg"
    , "det"
    , "dim"
    , "hom"
    , "ker"
    , "lim"
    , "liminf"
    , "limsup"
    , "max"
    , "min"
    , "sup"
    , "inf"
    , "Pr"
    , "gcd"
    , "arg"
    , "mod"
    , "bmod"
    , "pmod"
    , "pod"
    ]



-- Accents


accents : List String
accents =
    [ "hat"
    , "widehat"
    , "check"
    , "widecheck"
    , "tilde"
    , "widetilde"
    , "acute"
    , "grave"
    , "dot"
    , "ddot"
    , "breve"
    , "bar"
    , "vec"
    , "mathring"
    , "overline"
    , "underline"
    , "overleftarrow"
    , "overrightarrow"
    , "overleftrightarrow"
    , "underleftarrow"
    , "underrightarrow"
    , "underleftrightarrow"
    , "overgroup"
    , "undergroup"
    , "overbrace"
    , "underbrace"
    , "boxed"
    , "underlinesegment"
    , "overlinesegment"
    ]



-- Fonts


fonts : List String
fonts =
    [ "mathrm"
    , "mathit"
    , "mathbf"
    , "boldsymbol"
    , "pmb"
    , "mathbb"
    , "Bbb"
    , "mathcal"
    , "cal"
    , "mathscr"
    , "mathfrak"
    , "frak"
    , "mathsf"
    , "sf"
    , "mathtt"
    , "tt"
    , "mathnormal"
    , "text"
    , "textbf"
    , "textit"
    , "textrm"
    , "textsf"
    , "texttt"
    , "textnormal"
    , "textup"
    , "operatorname"
    , "operatorname*"
    ]



-- Spacing


spacing : List String
spacing =
    [ "quad"
    , "qquad"
    , "space"
    , "thinspace"
    , "medspace"
    , "thickspace"
    , "enspace"
    , "negmedspace"
    , "negthickspace"
    , "negthinspace"
    , "mkern"
    , "mskip"
    , "hskip"
    , "hspace"
    , "hspace*"
    , "kern"
    , "phantom"
    , "hphantom"
    , "vphantom"
    , "mathstrut"
    , "!"
    , ":"
    , ";"
    , ","
    ]



-- Logic and Set Theory


logicAndSetTheory : List String
logicAndSetTheory =
    [ "forall"
    , "exists"
    , "nexists"
    , "complement"
    , "subset"
    , "supset"
    , "mid"
    , "nmid"
    , "nsupseteq"
    , "nsubseteq"
    , "subsetneq"
    , "supsetneq"
    , "subsetneqq"
    , "supsetneqq"
    , "varsubsetneq"
    , "varsupsetneq"
    , "varsubsetneqq"
    , "varsupsetneqq"
    , "isin"
    , "notin"
    , "notni"
    , "in"
    , "ni"
    , "emptyset"
    , "varnothing"
    , "setminus"
    , "smallsetminus"
    , "complement"
    , "neg"
    , "lnot"
    ]



-- Miscellaneous Symbols


miscSymbols : List String
miscSymbols =
    [ "infty"
    , "aleph"
    , "beth"
    , "gimel"
    , "daleth"
    , "eth"
    , "hbar"
    , "hslash"
    , "Finv"
    , "Game"
    , "ell"
    , "wp"
    , "Re"
    , "Im"
    , "partial"
    , "nabla"
    , "Box"
    , "square"
    , "blacksquare"
    , "blacklozenge"
    , "lozenge"
    , "Diamond"
    , "triangle"
    , "triangledown"
    , "angle"
    , "measuredangle"
    , "sphericalangle"
    , "prime"
    , "backprime"
    , "degree"
    , "flat"
    , "natural"
    , "sharp"
    , "surd"
    , "top"
    , "bot"
    , "emptyset"
    , "varnothing"
    , "clubsuit"
    , "diamondsuit"
    , "heartsuit"
    , "spadesuit"
    , "blacktriangleright"
    , "blacktriangleleft"
    , "blacktriangledown"
    , "blacktriangle"
    , "bigstar"
    , "maltese"
    , "checkmark"
    , "diagup"
    , "diagdown"
    , "ddag"
    , "dag"
    , "copyright"
    , "circledR"
    , "pounds"
    , "yen"
    , "maltese"
    ]



-- Fractions and Binomials


fractions : List String
fractions =
    [ "frac"
    , "dfrac"
    , "tfrac"
    , "cfrac"
    , "genfrac"
    , "over"
    , "atop"
    , "choose"
    ]



-- Binomial Coefficients


binomials : List String
binomials =
    [ "binom"
    , "dbinom"
    , "tbinom"
    , "brace"
    , "brack"
    ]



-- Roots


roots : List String
roots =
    [ "sqrt"
    ]



-- Dots (\dotsb ... \dotso are amsmath's semantic dots)


dots : List String
dots =
    [ "ldots"
    , "cdots"
    , "vdots"
    , "ddots"
    , "dots"
    , "dotsb"
    , "dotsc"
    , "dotsi"
    , "dotsm"
    , "dotso"
    ]



-- Capital Greek letters that look like Latin ones (KaTeX extension)


moreGreekLetters : List String
moreGreekLetters =
    [ "Alpha"
    , "Beta"
    , "Chi"
    , "Epsilon"
    , "Eta"
    , "Iota"
    , "Kappa"
    , "Mu"
    , "Nu"
    , "Omicron"
    , "Rho"
    , "Tau"
    , "Zeta"
    , "omicron"
    ]


-- More relations, negated relations, arrows and symbols (amssymb, stmaryrd)


moreSymbols : List String
moreSymbols =
    [ "Cap"
    , "Cup"
    , "Doteq"
    , "Lsh"
    , "Rsh"
    , "Subset"
    , "Supset"
    , "Vdash"
    , "Vvdash"
    , "asymp"
    , "backepsilon"
    , "backslash"
    , "barwedge"
    , "bigcirc"
    , "bowtie"
    , "centerdot"
    , "circledS"
    , "circledast"
    , "circledcirc"
    , "circleddash"
    , "dArr"
    , "dashv"
    , "diamond"
    , "doublecap"
    , "doublecup"
    , "downdownarrows"
    , "downharpoonleft"
    , "downharpoonright"
    , "eqsim"
    , "eqslantgtr"
    , "eqslantless"
    , "geqq"
    , "geqslant"
    , "ggg"
    , "gggtr"
    , "gnapprox"
    , "gneq"
    , "gneqq"
    , "gnsim"
    , "gtrapprox"
    , "gtrdot"
    , "gtreqless"
    , "gtreqqless"
    , "gtrless"
    , "gtrsim"
    , "gvertneqq"
    , "imath"
    , "intercal"
    , "jmath"
    , "leftrightharpoons"
    , "leqq"
    , "leqslant"
    , "lessapprox"
    , "lessdot"
    , "lesseqgtr"
    , "lesseqqgtr"
    , "lessgtr"
    , "lesssim"
    , "llbracket"
    , "lll"
    , "llless"
    , "lnapprox"
    , "lneq"
    , "lneqq"
    , "lnsim"
    , "ltimes"
    , "lvertneqq"
    , "mathsterling"
    , "mho"
    , "minuso"
    , "models"
    , "nLeftarrow"
    , "nLeftrightarrow"
    , "nRightarrow"
    , "nVDash"
    , "nVdash"
    , "ncong"
    , "ngeq"
    , "ngeqq"
    , "ngeqslant"
    , "ngtr"
    , "nleftarrow"
    , "nleftrightarrow"
    , "nleq"
    , "nleqq"
    , "nleqslant"
    , "nless"
    , "nprec"
    , "npreceq"
    , "nrightarrow"
    , "nshortmid"
    , "nshortparallel"
    , "nsim"
    , "nsubseteqq"
    , "nsucc"
    , "nsucceq"
    , "nsupseteqq"
    , "ntriangleleft"
    , "ntrianglelefteq"
    , "ntriangleright"
    , "ntrianglerighteq"
    , "nvDash"
    , "nvdash"
    , "oiiint"
    , "oiint"
    , "precnapprox"
    , "precneqq"
    , "precnsim"
    , "rrbracket"
    , "rtimes"
    , "smallfrown"
    , "smallsmile"
    , "subseteqq"
    , "succnapprox"
    , "succneqq"
    , "succnsim"
    , "supseteqq"
    , "uArr"
    , "upharpoonleft"
    , "upharpoonright"
    , "upuparrows"
    , "vDash"
    , "vartriangle"
    , "varvdots"
    , "vdash"
    , "veebar"
    , "wr"
    ]


-- Colon relations (mathtools / colonequals)


colons : List String
colons =
    [ "Colonapprox"
    , "Coloneq"
    , "Coloneqq"
    , "Colonsim"
    , "Eqcolon"
    , "Eqqcolon"
    , "approxcoloncolon"
    , "colon"
    , "coloncolon"
    , "coloncolonapprox"
    , "coloncolonequals"
    , "coloncolonminus"
    , "coloncolonsim"
    , "coloneqq"
    , "colonequals"
    , "colonminus"
    , "dblcolon"
    , "eqqcolon"
    , "equalscolon"
    , "equalscoloncolon"
    , "minuscolon"
    , "minuscoloncolon"
    , "ordinarycolon"
    , "simcoloncolon"
    , "vcentcolon"
    ]


-- Extensible arrows and accents (mathtools)


extensibleArrows : List String
extensibleArrows =
    [ "Overrightarrow"
    , "overleftharpoon"
    , "overrightharpoon"
    , "underbar"
    , "utilde"
    , "xLeftarrow"
    , "xLeftrightarrow"
    , "xRightarrow"
    , "xhookleftarrow"
    , "xhookrightarrow"
    , "xleftarrow"
    , "xleftequilibrium"
    , "xleftharpoondown"
    , "xleftharpoonup"
    , "xleftrightarrow"
    , "xleftrightharpoons"
    , "xlongequal"
    , "xmapsto"
    , "xrightarrow"
    , "xrightequilibrium"
    , "xrightharpoondown"
    , "xrightharpoonup"
    , "xrightleftarrows"
    , "xrightleftharpoons"
    , "xtofrom"
    , "xtwoheadleftarrow"
    , "xtwoheadrightarrow"
    ]


-- More operator names


moreFunctions : List String
moreFunctions =
    [ "argmax"
    , "argmin"
    , "cosec"
    , "cotg"
    , "ctg"
    , "cth"
    , "injlim"
    , "operatornamewithlimits"
    , "plim"
    , "projlim"
    , "varinjlim"
    , "varliminf"
    , "varlimsup"
    , "varprojlim"
    ]


-- Layout, styles and math classes


layout : List String
layout =
    [ "bm"
    , "clap"
    , "displaystyle"
    , "hdashline"
    , "hline"
    , "llap"
    , "mathbin"
    , "mathclap"
    , "mathclose"
    , "mathinner"
    , "mathllap"
    , "mathop"
    , "mathopen"
    , "mathord"
    , "mathpunct"
    , "mathrel"
    , "mathrlap"
    , "nonumber"
    , "notag"
    , "rlap"
    , "scriptscriptstyle"
    , "scriptstyle"
    , "smash"
    , "tag"
    , "textstyle"
    ]


-- Bra-ket notation (braket package)


braKet : List String
braKet =
    [ "Bra"
    , "Braket"
    , "Ket"
    , "Set"
    , "bra"
    , "braket"
    , "ket"
    ]



-- Text Operators


textOperators : List String
textOperators =
    [ "not"
    , "cancel"
    , "bcancel"
    , "xcancel"
    , "sout"
    , "overline"
    , "underline"
    , "overset"
    , "underset"
    , "stackrel"
    , "atop"
    , "substack"
    ]
