#include "config.hh"

#include <iostream>
#include <cstdlib>

#include <QApplication>
#include <QDesktopWidget>
#include <QMainWindow>


int
main (int argc, char* argv[]) {
  QApplication app (argc, argv);
  QMainWindow window;
  window.setWindowTitle (PROJECT_NAME);
  window.resize (600, 480);
  window.move (QApplication::desktop ()->screen ()->rect ().center ()
	       - window.rect ().center ());
  window.show ();

  return app.exec ();
}
