default: example.swigcxx
	rm -f *.go libexample.so example.hh example_gc.c example_wrap.cxx
	curl -L -O https://raw.githubusercontent.com/hsmtkk/swigo_cc/main/example.hh
	curl -L -O https://github.com/hsmtkk/swigo_cc/releases/download/v1.0.1/libexample.so
	swig -go -cgo -c++ -intgosize 64 -use-shlib -soname libexample.so example.swigcxx

