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

* [Haskell](http://www.haskell.org/)

## Recommended

* [shake](https://shakebuild.com/) (e.g., `cabal install shake`)
* [hlint](https://hackage.haskell.org/package/hlint) (e.g., `cabal install happy; cabal install hlint`)

# BUILD

```console
$ cabal install --only-dependencies --enable-tests
$ shake
```

# LINT

Keep the code tidy:

```console
$ shake lint
```
