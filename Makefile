SHELL := /bin/bash

all:
	cabal build --only-dependencies --enable-tests --enable-benchmarks
	cabal build --enable-tests --enable-benchmarks all

run: all
	./tonato

test:
	cabal test

clean:
	cabal clean

