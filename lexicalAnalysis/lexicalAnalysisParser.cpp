//
// Created by lzrs on 12/30/21.
//
#include "lexicalAnalysisParser.h"

list<LexFragment*> LexicalAnalysis::ExecuteAnalysis()
{
    string line;
    FileIo file("deneme.txt");
    fileLines = file.getLineFromFile();
    regex RegexRule("\\b[a-zA-Z]{2,3}\\b|\\[[a-zA-Z]*\\]");
    smatch Match;
    while (!fileLines.empty())
    {
        line = fileLines.front();
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
        linkedListsOfFragments.push_back(HeadFragment);
        fileLines.pop_front();
    }
    return linkedListsOfFragments;

}

LexicalAnalysis::LexicalAnalysis()
{}
