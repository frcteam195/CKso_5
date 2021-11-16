all:
	make native
	make aarch64

aarch64:
	@mkdir -p build
	@mkdir -p build/aarch64	
	cd build/aarch64 && \
	cmake ../../ -DCMAKE_TOOLCHAIN_FILE=../../aarch64_jetson_toolchain.cmake -DJETSON_TOOLCHAIN_PATH=/jetsontoolchain/bin/&& \
	make -j8

native:
	@mkdir -p build
	@mkdir -p build/native
	cd build/native && \
	cmake ../../ && \
	make -j8

clean:
	@rm -rf ./build
