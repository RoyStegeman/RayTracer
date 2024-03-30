# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall

# Source files
SRCS = main.cc

# Executable name
TARGET = main

IMAGEFILE = image.ppm

# Build target
$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Run target
run: $(TARGET)
	./$(TARGET) > $(IMAGEFILE)

# Clean target
clean:
	rm -f $(TARGET)
