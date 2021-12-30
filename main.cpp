#include <iostream>
#include "fileIo/fileIo.h"


using namespace std;

int main() {
    FileIo file("/home/onerk/Desktop/text.txt");
    list<string> fileList = file.getLineFromFile();
    return 0;
}
