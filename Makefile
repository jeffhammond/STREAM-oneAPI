CXX = dpcpp
CXXFLAGS = -O3 -xHOST \
	   -qopt-zmm-usage=low \
           -fsycl \
           -mcmodel=medium \
           -shared-intel \
           -DSTREAM_ARRAY_SIZE=134217728 \
           -DOFFSET=0 \
	   -DNTIMES=100 \
           -DTUNED

all: stream_sycl.exe

stream_sycl.exe: stream.cc
	$(CXX) $(CXXFLAGS) stream.cc -o stream_sycl.exe

clean:
	rm -f stream_sycl.exe *.o
