//
// Created by lzrs on 1/2/22.
//

#ifndef INC_8086EMULATOR__LEXICALANALYSISPARSER_H
#define INC_8086EMULATOR__LEXICALANALYSISPARSER_H
#include<string>
#include<map>
#include<regex>
#include<algorithm>
#include<iostream>
#include "../fileIo/fileIo.h"
#include "../main_cpu/main_cpu.h"
using namespace std;
struct LexFragment
{
    string FragmentValue;
    string FragmentLex;
    LexFragment *NextFragment=nullptr;

};
map<string,string> NameToLexMap = {
        {"MOV","INSTRUCTION"},
        {"AX","REGISTER"},
        {"[BX]","REGISTER"}
        //....Devami Yazilsin....
};

class LexicalAnalysis
{
private:
    LexFragment *CurrentFragment = nullptr;
    LexFragment *LastFragment = nullptr;
    LexFragment *HeadFragment = nullptr;
    string FragmentName;
    string FragmentLexName;
    list<string> fileLines;
    list<LexFragment*> linkedListsOfFragments;
public:
    LexicalAnalysis();
    list<LexFragment*> ExecuteAnalysis();

};
#endif //INC_8086EMULATOR__LEXICALANALYSISPARSER_H
