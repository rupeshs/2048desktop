#include <QtGui/QApplication>
#include "html5applicationviewer.h"
#include <QtWebKit/QWebSettings>
#include <QtWebKit>
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    Html5ApplicationViewer viewer;
    viewer.setOrientation(Html5ApplicationViewer::ScreenOrientationAuto);
    viewer.show();
    viewer.setGeometry(viewer.x(),viewer.y(),400,550);
    QGraphicsWebView* gameView=viewer.webView();
    QWebSettings *settings = gameView->settings();
    settings->setAttribute(QWebSettings::LocalStorageEnabled, true);
    settings->setLocalStoragePath(QDir::tempPath());
    viewer.loadFile(QLatin1String("2048/index.html"));
    viewer.setFocus();


    return app.exec();
}
