#include "config.hh"

#include <iostream>
#include <cstdlib>

int
main (int argc, char* argv[]) {
  UNUSED (argc, argv);

  std::cout << "Project -> \"" << PROJECT_NAME << "\"" << std::endl;

  return EXIT_SUCCESS;
}
