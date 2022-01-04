//
// Created by lzrs on 1/2/22.
//

#ifndef INC_8086EMULATOR__MAIN_CPU_H
#define INC_8086EMULATOR__MAIN_CPU_H
#include "list"
#include "string"
#include "../lexicalAnalysis/lexicalAnalysisParser.h"
#include "../registers/registers.h"
using namespace std;
class MainCPU{
private:
    list<LexFragment*> input;

public:
    void execute_cpu();
};
enum instruction_code{
    MOV,
    ADD,
    SUB,
};
map<string, instruction_code> instruction_hashmap={
        {"MOV",MOV},
        {"ADD",ADD}
};


#endif //INC_8086EMULATOR__MAIN_CPU_H
