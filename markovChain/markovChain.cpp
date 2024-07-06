#include "markovChain.h"
#include <chrono>
#include <iostream>
#include <random>

MarkovChain::MarkovChain(int order) : order(order) {};

void MarkovChain::addGram(ngram gram) {
  grams.push_back(gram);
}

int getIndexOfGram(std::vector<ngram> grams, std::string gramChars) {
  for (int i = 0; i < grams.size(); i++) {
    if (grams[i].chars == gramChars) {
      return i;
    }
  }
  return -1;
}

void MarkovChain::parseText(std::string text) {
  int len = text.length() - order;
  for (int i = 0; i <= len; i++) {
    std::cout << "Parsing... " << i + 1 << "/" << len << "     \r" << std::flush;
    ngram gram = ngram{
        .order = order,
        .chars = "",
    };
    for (int j = 0; j < order; j++) {
      gram.chars += text[i + j];
    }
    const int gramIndex = getIndexOfGram(grams, gram.chars);
    if (gramIndex == -1) {
      gram.nextChars.push_back(text[i + order]);
      addGram(gram);
    } else {
      grams[gramIndex].nextChars.push_back(text[i + order]);
    }
  }
}

std::string MarkovChain::generate(std::string txt) {
  parseText(txt);

  auto currentGram = grams[getIndexOfGram(grams, txt.substr(0, order))];
  std::string str = currentGram.chars;

  for (int i = 0; i < 1000; i++) {
    std::cout << "Generating... " << i + 1 << "/1000  \r" << std::flush;
    auto possibilities = currentGram.nextChars;
    if (int(possibilities[0]) == 0)
      break;

    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
    std::default_random_engine gen(seed);
    std::uniform_int_distribution<int> dist(0, possibilities.size() - 1);

    auto next = possibilities[dist(gen)];
    str += next;

    currentGram = grams[getIndexOfGram(grams, str.substr(str.length() - order, order))];
  }

  return str;
}
