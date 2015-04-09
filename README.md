# jumpthefive - an elementary symmetric chiffre for pragmatically protecting one's effects

# EXAMPLE

```
$ cat examples/toll-free.txt 
1-800-438-2653
1-800-2255-288
1-800-MYGRITS

$ jumpthefive < examples/toll-free.txt 
9-255-672-8407
9-255-8800-822
9-255-4163623

$ jumpthefive < examples/toll-free.txt | jumpthefive
1-800-438-2653
1-800-2255-288
1-800-6947487
```

# ABOUT

Watch [The Wire S01E05: The Pager](http://www.imdb.com/title/tt0749450/?ref_=ttep_ep5)

# HACKAGE

http://hackage.haskell.org/package/jumpthefive

# REQUIREMENTS

* [Haskell](http://www.haskell.org/)
* [parallel](http://hackage.haskell.org/package/parallel)

Install parallel with `cabal install -p parallel`.

Recommend configuring cabal to default to profiled libraries:

https://github.com/mcandre/dotfiles/blob/master/.cabal/config#L24

## OPTIONAL

* [Ruby](https://www.ruby-lang.org/) 1.9+

# INSTALL

```
$ cabal install jumpthefive
```

# DEVELOPMENT

## Build

```
$ cabal update
$ cabal install
```

## Lint

Keep the code tidy:

```
$ cabal install hlint
$ hlint .
$ bundle install
$ lili .
```
