//
// Created by ayi on 1/5/22.
//
#include <iostream>
#include <string>
#ifndef INC_8086EMULATOR__MAIN_MEMORY_H
#define INC_8086EMULATOR__MAIN_MEMORY_H

class mainmemory{
private:
    short int ram[557048] = {0};
public:
    short int get_memory_x(int adress);
    void set_memory_x(short int value,int adrees);

};


#endif //INC_8086EMULATOR__MAIN_MEMORY_H
