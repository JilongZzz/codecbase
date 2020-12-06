#include <iostream>
#include "mysql_client.h"

int main(int, char**) {

    mysql_client m_cli;
    m_cli.connect();
    
    std::cout << "Hello, world!\n";
}
