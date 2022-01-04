//
// Created by lzrs on 1/2/22.
//

#ifndef INC_8086EMULATOR__REGISTERS_H
#define INC_8086EMULATOR__REGISTERS_H
#include "map"
#include "string"
#include "../main_cpu/main_cpu.h"
using namespace std;
class Register{
protected:
    short int AX = 0;
    short int BX= 0;
    short int CX= 0;
    short int DX= 0;
    short int SP= 0;
    short int BP= 0;
    short int SI= 0;
    short int DI= 0;
    //segment registers
    short int CS= 0;
    short int DS= 0;
    short int ES= 0;
    short int SS= 0;
    short int IP= 0;
    short int memory= 0;
public:
/*short int get_register();
void set_register();*/
};

class GeneralPurposeRegisters: Register{
private:
    map<string,short int> register_map ={
            {"AX",AX},
            {"BX",BX},
            {"CX",CX},
            {"DX",DX},
            {"[BX]",memory}
    };
public:
    friend class MainCPU;
    short int get_x_register(string);
    void set_x_register(string, short int);
};
#endif //INC_8086EMULATOR__REGISTERS_H
