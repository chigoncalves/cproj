#include "config.h"

#include <stdio.h>
#include <stdlib.h>

int
main (int argc, char* argv[]) {
  UNUSED (argc, argv);

  printf ("Project -> \"%s\".\n", PROJECT_NAME);

  return EXIT_SUCCESS;
}
