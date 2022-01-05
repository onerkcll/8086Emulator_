//
// Created by onerk on 30.12.2021.
//

#ifndef INC_8086EMULATOR__FILEIO_H
#define INC_8086EMULATOR__FILEIO_H

#include "fstream"
#include "list"
#include "algorithm"
#include "string"
#include "../lexicalAnalysis/lexicalAnalysisParser.h"
using namespace std;

class FileIo {
public:
    explicit FileIo(string fileName);

    list<string> getLineFromFile();
    friend class LexicalAnalysis;
private:
    string filePath;


};


#endif //INC_8086EMULATOR__FILEIO_H
