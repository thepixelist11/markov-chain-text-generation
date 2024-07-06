#pragma once
#include <string>
#include <vector>

struct ngram {
  int order;
  std::string chars;
  std::vector<char> nextChars;
};

class MarkovChain {
 public:
  MarkovChain(int order);

  std::vector<ngram> grams;
  int order;

  void addGram(ngram gram);
  std::string generate(std::string text);

 private:
  void parseText(std::string text);
};
