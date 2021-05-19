n:
	@echo "Err: no arguments"
buildall:
	nasm -f bin assembly/main.asm -o bin/helloworld-assembly
	gcc c/main.c -o bin/helloworld-c
	g++ c++/main.cpp -o bin/helloworld-c++
	go build go/main.go
	mv main bin/helloworld-go
	pkg javascript/main.js -o bin/helloworld-javascript
	pyinstaller python/main.py
	mv dist/main/main bin/helloworld-python
	rustc rust/main.rs -o bin/helloworld-rust
run:
	make build
	./bin/*