# memoryManagementCPP

The memory management C++ application was developed while watching a course on memory management in C++.

https://www.youtube.com/watch?v=Dkn4EKL2xSE

The application is a reservation system for a hotel. The goal of the project is to learn different memory management techinques and strategies to avoid common errors.

I've included a Dockerfile to build and launch the application with CMake. I also included some unit-testing with gtest.

To build and run the application without unit testing
```
docker build -t reservation_system .
docker run --rm reservation_system
```

To build and run the application with unit testing

```
docker build --build-arg=test reservation_system .
docker run -e BUILD_TARGET=test reservation_system
```



