//
// Created by Administrator on 2022/4/5.
//
/*/
#ifndef HELLO_WORLD_MESSAGE_H
#define HELLO_WORLD_MESSAGE_H


class message {

};


#endif //HELLO_WORLD_MESSAGE_H
//*/
#pragma once

#include <iosfwd>
#include <string>

class Message {
public:
    Message(const std::string &m) : message_(m) {}

    friend std::ostream &operator<<(std::ostream &os, Message &obj) {
        return obj.printObject(os);
    }

private:
    std::string message_;
    std::ostream &printObject(std::ostream &os);
};
