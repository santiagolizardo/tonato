
main:
	ghc --make Main.hs

run: main
	./Main

test:
	ghc --make Test.hs

runtest: test
	./Test

clean:
	rm -f {Main,Test}
	rm -f {*.hi,*.o}

