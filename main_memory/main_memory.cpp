//
// Created by ayi on 1/5/22.
//
#include "main_memory.h"
#include <iostream>
#include <string>
using namespace std;
short int get_memory_x(int adress)
{
    short int value = ram [adress];
    return value;
}

void set_memory_x(short int value,int adrees)
{
    ram[adrees] = value;
}

void strtoasci(string str)//direk ramdeki hücresine kaydeilecek formatta
{
    int l = str.length();
    int k[l];
    int m;
    if(l%2==1)
    {
        m = l/2;
        m = m + 1;
    }
    else
    {
        m = l/2;
    }
    short int t[m];
    int convert;
    for (int i = 0; i < l; i++) {
        convert = str[i] - NULL;
        k[i] = convert;
    }
    for(int i = 0; i < l-1;i++)
    {
        int b,c;
        b = k[i];
        c = k[i+1];
        t[i] = b|c;
    }
}

int decimaltobinary(short int deger) //ramdaki veri alınıyor tek hücrede iki karakte var yani iki binary onları bulup decimal setleyip karakteri bulucaz
{

    int binaryNum[32];


    int i = 0;
    while (deger > 0) {


        binaryNum[i] = n % 2;
        deger = deger / 2;
        i++;
    }
    for (int j = i - 1; j >= 0; j--)
        string ilk,iki;
        string s,k;
        if(binaryNum[j]==0)
        {
          s = "0";
          k = "0"
        }
        else
        {
             s = "1";
             k = "1";
        }
        strcat(ilk,s);
        strcat(iki,k);
        int ilk_k = binaryToDecimal(ilk);
        int iki_k = binaryToDecimal(iki);
        string skt;
        string skt2;

        stringstream ss;
        stringstream sss;
        ss << ilk_k;
        ss >> skt;
    asciiToSentence(skt);
        sss << iki_k;
        sss >> skt2;
    asciiToSentence(skt2);


}

int binaryToDecimal(string n)
{
    string num = n;
    int dec_value = 0;

    int base = 1;

    int len = num.length();
    for (int i = len - 1; i >= 0; i--) {
        if (num[i] == '1')
            dec_value += base;
        base = base * 2;
    }

    return dec_value;
}

void asciiToSentence(string str)
{
    int num = 0;
    int len = str.length();
    for (int i = 0; i < len; i++) {


        num = num * 10 + (str[i] - '0');


        if (num >= 32 && num <= 122) {


            char ch = (char)num;
            cout << ch;


            num = 0;
        }
    }
}