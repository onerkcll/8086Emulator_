//
// Created by onerk on 30.12.2021.
//

#include "fileIo.h"

FileIo::FileIo(string fileName) {
    this->filePath = fileName;
}

list<string> FileIo::getLineFromFile() {
    ifstream fio;
    list<string> fileLines;
    fio.open(this->filePath, ios::in);
    string line;
    if (fio.is_open()) {
        while (getline(fio, line)) {
            // Read a Line from File
            transform(line.begin(), line.end(), line.begin(), ::toupper);
            // Add Lines to List
            fileLines.push_back(line);
        }
        fio.close();
    }
    return fileLines;
}

