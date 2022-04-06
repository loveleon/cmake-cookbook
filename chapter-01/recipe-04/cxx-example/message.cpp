//
// Created by Administrator on 2022/4/5.
//

#include "message.hpp"
#include <iostream>
#include <string>

std::ostream &Message::printObject(std::ostream &os) {
    os << "This is my very nice message: " << std::endl;
    os << message_;

    return os;
}
