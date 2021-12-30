//
// Created by lzrs on 12/30/21.
//

#include<iostream>
#include<string>
#include<map>
#include<regex>
#include<algorithm>
using namespace std;

struct LexFragment
{
    string FragmentValue;
    string FragmentLex;
    LexFragment *NextFragment=nullptr;

};

map<string,string> NameToLexMap = {
        {"MOV","INSTRUCTION"}
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
public:
    LexicalAnalysis();
    LexFragment* ExecuteAnalysis(string);
};

LexFragment* LexicalAnalysis::ExecuteAnalysis(string line)
{
    regex RegexRule("\\b[a-zA-Z]{2,3}\\b");
    smatch Match;
    while (regex_search(line,Match,RegexRule))
    {
        for (auto x : Match)
        {
            FragmentName = x;
        }
        line = Match.suffix().str();
        FragmentLexName = NameToLexMap[FragmentName];
        CurrentFragment = new LexFragment;
        CurrentFragment->FragmentLex = FragmentLexName;
        CurrentFragment->FragmentValue = FragmentName;
        if (LastFragment==nullptr)
        {
            HeadFragment = CurrentFragment;
        }
        else
        {
            LastFragment->NextFragment=CurrentFragment;
        }

        LastFragment = CurrentFragment;
    }
    return HeadFragment;
}

LexicalAnalysis::LexicalAnalysis()
{


}
