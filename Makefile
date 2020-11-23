CXX = dpcpp
CXXFLAGS = -O3 -fsycl -DTUNED

all: stream_sycl.exe

stream_sycl.exe: stream.cc
	$(CXX) $(CXXFLAGS) stream.cc -o stream_sycl.exe

clean:
	rm -f stream_sycl.exe *.o
