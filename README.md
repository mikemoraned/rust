It all started with https://twitter.com/joehalliwell/status/536121220430057473 :

    "Rust" is a word composed of four successive letters of the alphabet. Are there more?

I hacked together range.pl, and it looks like "rust" is the only one. However, for 5 letter words, we have "struv":

    bash-3.2$ for limit in `seq 2 15`; do echo $limit; cat /usr/share/dict/words | perl range.pl $limit; done
    2
    ba
    de
    fe
    hi
    no
    on
    po
    st
    tu
    ut
    3
    bac
    cab
    fed
    mon
    pon
    ust
    4
    rust
    5
    struv
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15

Note that "struv" doesn't appear to be a word that exists in any dictionary I find online. *However* /usr/share/dict/words should be based on Websters, so perhaps it's an older usage?

I actually initially misread the problem and first found "all those words whose characters appear in sorted order". Here's the top 10 by length:

    bash-3.2$ cat /usr/share/dict/words | perl sorted.pl | sort -rn | head -10
    7 egilops
    7 billowy
    7 begorry
    7 beefily
    7 alloquy
    7 adelops
    6 knotty
    6 knoppy
    6 glossy
    6 ghosty

