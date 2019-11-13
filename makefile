make: clean compile

compile:
	solc -o dist --abi --bin *.sol

clean:
	rm -rf dist
