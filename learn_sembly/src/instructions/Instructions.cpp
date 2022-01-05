//
// Created by onerk on 18.12.2021.
//

#include "Instructions.h"


Instructions::Instructions(string instruction, int registerFirst, int registerSecond) {
    this->instruction = instruction;
    this->registerFirst = registerFirst;
    this->registerSecond = registerSecond;
    executeInstruction();
}

Instructions::~Instructions() {
    this->instruction = "";
    this->registerFirst = 0;
    this->registerSecond = 0;
}

void Instructions::showInfos() const {
    cout << "Instruction" << this->instruction << endl;
    cout << "Register From" << this->registerFirst << endl;
    cout << "To Register" << this->registerSecond << endl;
}


Instructions::string_code Instructions::hashIt(string const &instString) {
    if (instString == "MOV") return Instructions::MOV;
    if (instString == "ADD") return Instructions::ADD;
    if (instString == "SUB") return Instructions::SUB;
    if (instString == "MUL") return Instructions::MUL;
}

void Instructions::executeInstruction() {
    int arr[] = {2, 8, 7, 9, 10, 11, 12};
    switch (hashIt(this->instruction)) {
        case Instructions::MOV:
            arr[this->registerFirst] = arr[this->registerSecond];
        case Instructions::ADD:
            arr[this->registerFirst] = arr[this->registerSecond] + arr[this->registerFirst];
        case Instructions::MUL:
            arr[this->registerFirst] = arr[this->registerSecond] / arr[this->registerFirst];
        case Instructions::SUB:
            arr[this->registerFirst] = arr[this->registerSecond] - arr[this->registerFirst];

    }
}

