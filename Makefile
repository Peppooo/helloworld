n:
	@echo "Err: no arguments"
buildall:
	@rm bin/*
	@nasm -f bin assembly/main.asm -o bin/helloworld-assembly
	@gcc c/main.c -o bin/helloworld-c
	@g++ c++/main.cpp -o bin/helloworld-c++
	@go build go/main.go
	@mv main bin/helloworld-go
	@pkg javascript/main.js -o bin/helloworld-javascript
	@pyinstaller python/main.py --onefile
	@dmd d/main.d
	@mv ./main ./bin/helloworld-d
	@rustc rust/main.rs -o bin/helloworld-rust

installreq:
	@sudo apt install nasm
	@sudo apt install gcc
	@sudo apt install g++
	@sudo snap install go
	@sudo apt install nodejs
	@sudo npm install pkg -g
	@sudo apt install python3
	@sudo apt install python3-pip
	@sudo pip3 install pyinstaller
	@sudo snap install dmd
	@sudo apt install rustc
	@echo
	@echo Installation completed
