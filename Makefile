SRCS	= main.cpp
LIBS	= $(SRCS:.cpp=.o)
##############################
# Libs
# 
# Standard Way:
# -lBlah		<-- references libBlah.a, libBlah.o, libBlah.so, libBlah.dylib, or whatever
# -I/incdir		<-- contains Blah.h
# -L/libdir		<--	contains libBlah.whatever
# 
# OS X Frameworks Way:
# uncomment the "FW_xx =..." line then add
# "$(FW_xx)" to the LDLIBS variable line down below
# 
#
#-I/usr/local/include			-L/usr/local/lib
#<FreeImage.h>					-lfreeimage
#<randoma.h>					-lrandomamac64
#
#-I/usr/include/python2.6
#<Python.h>						-lpython
#FW_PY	= -framework Python
#
#-I/usr/local/cuda/include		-L/usr/local/cuda/lib
#<cuda.h>						-lcuda
#<cuda_runtime.h>				-lcudart
#<cublas.h>						-lcublas
#<cufft.h>						-lcufft
#<curand.h>						-lcurand
#<cusparse.h>					-lcusparse
#<npp.h>						-lnpp
#								-ltlshook
#FW_CUDA= -framework CUDA		(where is this?)
#
# OS X Native OpenGL Framework
#-I/opt/local/include			-L/opt/local/lib
#<OpenGL/gl.h>					-lGL
#<OpenGL/glext.h>				-lGL
#<OpenGL/glu.h>					-lGLU
#FW_GL	= -framework OpenGL
#
#FW_GLUT= -framework GLUT
#<GLUT/glut.h>					-lglut
#
#<GL/glew.h>					-lGL
#<GL/glx.h>						-l??
#
#<OpenCL/cl.h>
#<OpenCL/opencl.h>
#FW_CL	= -framework OpenCL
#
#FW_AL	= -framework OpenAL
CXXFLAGS= 
#LDLIBS	= $(FW_GL) $(FW_PY)
LDLIBS	= 
BINARY	= test
# gcc-4.5.2 (from MacPorts)
# CXX		= g++-mp-4.5					# GNU C++ Compiler
# NVCC		= /usr/local/cuda/bin/nvcc		# NVIDIA CUDA C Compiler

all: $(BINARY)

$(BINARY): $(LIBS)
	$(LINK.cpp) $^ $(LDLIBS) -o $@

clean: 
	$(RM) $(LIBS) $(BINARY)
