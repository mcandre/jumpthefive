# jumpthefive - an elementary symmetric chiffre for pragmatically protecting one's effects

# EXAMPLE

```console
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

# DOCUMENTATION

http://hackage.haskell.org/package/jumpthefive

# RUNTIME REQUIREMENTS

(None)

# BUILDTIME REQUIREMENTS

* [GHC Haskell](http://www.haskell.org/) 8+
* [happy](https://hackage.haskell.org/package/happy) (e.g., `cabal install happy`)

# BUILD

```console
$ cabal update
$ cabal install --force-reinstalls --only-dependencies --enable-documentation
$ cabal install --force-reinstalls --only-dependencies --enable-tests
$ shake
```

# LINT

Keep the code tidy:

```console
$ shake lint
```

# PUBLISH

```console
$ shake publish
```
