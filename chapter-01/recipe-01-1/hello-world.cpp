//
// Created by Administrator on 2022/4/5.
//
#include <cstdlib>
#include <string>
#include <iostream>

std::string say_hello() {
    return std::string("hello world");
}

int main(){
    std::cout << say_hello() << std::endl;
    return EXIT_SUCCESS;
}
