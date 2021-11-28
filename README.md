tonato (To NATO)
================

Simple Haskell command line program that converts characters to their NATO representation.

Usage
-----

```bash
cabal run -v0 tonato "Hello World"

HOTEL-echo-lima-lima-oscar WHISKEY-oscar-romeo-lima-delta
```

Building
--------

Requirements:
- Haskell compiler 8+
- Cabal 3+
- Haskell dependencies (managed by Cabal): split, QuickCheck

To compile:

```bash
make
```

To run the test suite:

```bash
make test

+++ OK, passed 1 tests.
+++ OK, passed 1 tests.
```
