all: build

clean:
	rm -rf build

build: clean
	mkdir build
	cd build && cmake .. && make

run:
	./build/main
