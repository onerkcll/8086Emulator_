//
// Created by lzrs on 1/2/22.
//
#include "registers.h"


short int GeneralPurposeRegisters::get_x_register(string reg) {
    if (reg == "AX") return register_map[reg];
    if (reg == "BX") return register_map[reg];
    if (reg == "CX") return register_map[reg];
    if (reg == "DX") return register_map[reg];
    if (reg == "[BX]")
    {

    }
    if (reg == "AH") {

        return (AX & 0xff00);
    }
    if (reg == "BH") {

        return (BX & 0xff00);
    }
    if (reg == "CH") {

        return (CX & 0xff00);
    }
    if (reg == "DH") {

        return (DX & 0xff00);
    }
    if (reg == "AL") {

        return (AX & 0x00ff);
    }
    if (reg == "BL") {

        return (BX & 0x00ff);
    }
    if (reg == "CL") {

        return (CX & 0x00ff);
    }
    if (reg == "DL") {

        return (DX & 0x00ff);
    }
}

void GeneralPurposeRegisters::set_x_register(string reg, short int val) {
    if (reg == "AX")  register_map[reg] = val;
    if (reg == "BX")  register_map[reg] = val;
    if (reg == "CX")  register_map[reg] = val;
    if (reg == "DX")  register_map[reg] = val;
    if (reg == "[BX]") //memory access
    {

    }
    if (reg == "AH") {

        AX = val & 0xff00;
    }
    if (reg == "BH") {

        BX =val & 0xff00;
    }
    if (reg == "CH") {

        CX =val & 0xff00;
    }
    if (reg == "DH") {

        DX =val & 0xff00;
    }
    if (reg == "AL") {

        AX =val & 0x00ff;
    }
    if (reg == "BL") {

        BX =val & 0x00ff;
    }
    if (reg == "CL") {

        CX =val & 0x00ff;
    }
    if (reg == "DL") {

        DX =val & 0x00ff;
    }
}
















