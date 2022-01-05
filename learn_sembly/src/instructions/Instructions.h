//
// Created by onerk on 18.12.2021.
//

#ifndef INC_8086EMULATOR__INSTRUCTIONS_H
#define INC_8086EMULATOR__INSTRUCTIONS_H

#include "iostream"

using namespace std;

class Instructions {
public:
    explicit Instructions(string instruction, int registerFirst = 0, int registerSecond = 0);

    virtual ~Instructions();

    void showInfos() const;
    enum string_code {
        MOV,
        ADD,
        SUB,
        MUL,
    };

private:
    string instruction;

    string_code hashIt(string const& instString);
    int registerFirst;
    int registerSecond;
    void executeInstruction();


};


#endif //INC_8086EMULATOR__INSTRUCTIONS_H
