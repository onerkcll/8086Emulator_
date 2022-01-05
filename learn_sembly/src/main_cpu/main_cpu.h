//
// Created by lzrs on 1/2/22.
//

#ifndef INC_8086EMULATOR__MAIN_CPU_H
#define INC_8086EMULATOR__MAIN_CPU_H
#include <list>
#include "string"
#include "../lexicalAnalysis/lexicalAnalysisParser.h"
#include "../registers/registers.h"
using namespace std;
class MainCPU{
private:
    list<LexFragment*> input2;

public:
    void execute_cpu();
};
enum instruction_code{
    MOV,
    ADD,
    SUB,
    MUL,
    INT,
    RET,
    JMP
};

map<string, instruction_code> instruction_hashmap={
        {"MOV",MOV},
        {"ADD",ADD},
        {"SUB",SUB},
        {"MUL",MUL},
        {"INT",INT},
        {"RET",RET},
        {"JMP",JMP}
};


#endif //INC_8086EMULATOR__MAIN_CPU_H
