
all:
	cabal install --lib --package-env . split
	ghc -o tonato --make Main.hs

run: all
	./tonato

test:
	ghc -o tonato-test --make Test.hs

runtest: test
	./tonato-test

clean:
	rm -f {tonato,tonato-test}
	rm -f {*.hi,*.o}

