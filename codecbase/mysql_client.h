#pragma once

#include <iostream>

class mysql_client
{
private:
    /* data */
public:
    mysql_client(/* args */);
    ~mysql_client();

public:
    void connect(){
        std::cout<<"mysql connected.";
    }
};

mysql_client::mysql_client(/* args */)
{
}

mysql_client::~mysql_client()
{
}
