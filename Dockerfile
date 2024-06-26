# Dockerfile

FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libyaml-cpp-dev \
    libgtest-dev \
    gdb \
    wget \
    git \
    libeigen3-dev \
    && rm -rf /var/lib/apt/lists/*


# Install Google Test
RUN cd /usr/src/googletest && cmake . && make && cp lib/*.a /usr/lib


# Set the working directory
WORKDIR /app

# Copy the entire project
COPY . .

ARG BUILD_TARGET=app

# Build the project
RUN mkdir build

# Use the build argument to decide what to build and run
RUN if [ "$BUILD_TARGET" = "test" ] ; then \
        cd build && cmake -DBUILD_TESTS=ON .. && make ; \
    else \
        cd build && cmake .. && make ; \
    fi

# Default command
CMD if [ "$BUILD_TARGET" = "test" ] ; then \
        ./build/test/MemoryManagementTests ; \
    else \
        ./build/src/main.cpp; \
    fi