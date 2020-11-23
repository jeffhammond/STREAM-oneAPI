CXX = dpcpp
CXXFLAGS = -O3 -fsycl -DTUNED -DSTREAM_ARRAY_SIZE=134217728 -DNTIMES=20

all: stream_sycl.exe

stream_sycl.exe: stream.cc
	$(CXX) $(CXXFLAGS) stream.cc -o stream_sycl.exe

clean:
	rm -f stream_sycl.exe *.o
