//
// Created by onerk on 30.12.2021.
//

#ifndef INC_8086EMULATOR__FILEIO_H
#define INC_8086EMULATOR__FILEIO_H

#include "iostream"
#include "fstream"
#include "list"
#include "algorithm"
#include "string"
using namespace std;

class FileIo {
public:
    explicit FileIo(string fileName);

    list<string> getLineFromFile();

private:
    string filePath;


};


#endif //INC_8086EMULATOR__FILEIO_H
