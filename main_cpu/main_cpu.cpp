//
// Created by onerk on 1/4/22.
//
#include "main_cpu.h"

void MainCPU::execute_cpu() {
    LexicalAnalysis lexer;
    input2 = lexer.ExecuteAnalysis();
    GeneralPurposeRegisters GeneralRegs;
    LexFragment *currentFragment;
    LexFragment *instruction;
    LexFragment *register1 = nullptr;
    LexFragment *register2 = nullptr;

    while (input2.size() != GeneralRegs.IP) {
        currentFragment = input2.front();
        while (currentFragment->NextFragment != nullptr) {
            if (currentFragment->FragmentLex == "INSTRUCTION") instruction = currentFragment;
            if (currentFragment->FragmentLex == "REGISTER") {
                if (register1 == nullptr) {
                    register1 = currentFragment;
                } else {
                    register2 = currentFragment;
                }
            }
        }

        switch (instruction_hashmap[instruction->FragmentValue]) {
            case MOV:
                GeneralRegs.set_x_register(register1->FragmentValue,
                                           GeneralRegs.get_x_register(register2->FragmentValue));
                GeneralRegs.IP++;
                break;
            case ADD:
                GeneralRegs.set_x_register(register1->FragmentValue,
                                           GeneralRegs.get_x_register(register1->FragmentValue) +
                                           GeneralRegs.get_x_register(register2->FragmentValue));
                GeneralRegs.IP++;
                break;
            case SUB:
                GeneralRegs.set_x_register(register1->FragmentValue,
                                           GeneralRegs.get_x_register(register1->FragmentValue) -
                                           GeneralRegs.get_x_register(register2->FragmentValue));
                GeneralRegs.IP++;
                break;
            case MUL:
                GeneralRegs.set_x_register(register1->FragmentValue,
                                           GeneralRegs.get_x_register(register1->FragmentValue) *
                                           GeneralRegs.get_x_register(register2->FragmentValue));
                GeneralRegs.IP++;
                break;
            case RET:
                GeneralRegs.IP = input2.size();
                break;
            case JMP:
                GeneralRegs.IP = GeneralRegs.get_x_register(register1->FragmentValue);
                break;
            case INT:
                short int controlFlag = GeneralRegs.get_x_register("AH");
                if (controlFlag == 9) {
                    // print smth
                }
                break;


        }


    }


}
