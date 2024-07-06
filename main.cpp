#include <limits.h>
#include <fstream>
#include <iostream>
#include "markovChain/markovChain.h"

#include <string>

#ifdef _WIN32
#include <windows.h>
static std::string getExecutablePath() {
  char buffer[MAX_PATH];
  GetModuleFileName(NULL, buffer, MAX_PATH);
  return std::string(buffer);
}
#elif __linux__
#include <limits.h>
#include <unistd.h>
static std::string getExecutablePath() {
  char buffer[PATH_MAX];
  ssize_t len = readlink("/proc/self/exe", buffer, sizeof(buffer) - 1);
  if (len != -1) {
    buffer[len] = '\0';
    return std::string(buffer);
  } else {
    return std::string();
  }
}
#else
static std::string getExecutablePath() {
  return std::string();
}
#endif

std::string readFile(std::string path) {
  char buf[PATH_MAX];
  std::string absPath = realpath(path.c_str(), buf);
  std::ifstream file(absPath);

  std::string ret;
  std::string line;
  if (file.is_open()) {
    while (getline(file, line)) {
      ret += line;
    }
    file.close();
  }

  return ret;
}

int main(int argc, char* argv[]) {
  MarkovChain mc = MarkovChain(5);
  auto exePath = getExecutablePath();
  auto txt = readFile(exePath.substr(0, exePath.find_last_of('/')) + "/data/" + argv[1]);
  auto generated = mc.generate(txt);
  std::cout << generated << std::endl;
}
