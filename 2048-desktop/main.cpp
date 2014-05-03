/*
    2048 Desktop
    Copyright (C) 2014 Rupesh Sreeraman
    Based on 2048 By Gabriele Cirulli
    http://gabrielecirulli.github.io/2048/

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include <QtGui/QApplication>
#include <html5applicationviewer.h>
#include <QGraphicsWebView>
#include <QWebSettings>
#include <QDesktopServices>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    //Add lib paths
    QCoreApplication::addLibraryPath(qApp->applicationDirPath()+"/imageformats");

    //App init
    Html5ApplicationViewer *viewer=new Html5ApplicationViewer();
    viewer->setOrientation(Html5ApplicationViewer::ScreenOrientationAuto);

    //Get game view
    QGraphicsWebView* gameView=viewer->webView();
    QWebSettings *settings = gameView->settings();

    //Set storage path
    settings->setAttribute(QWebSettings::LocalStorageEnabled, true);
    settings->setLocalStoragePath(QDesktopServices::storageLocation( QDesktopServices::DataLocation ));

    qDebug()<<QDesktopServices::storageLocation( QDesktopServices::DataLocation );

    //init viewer stuff
    viewer->loadFile(QLatin1String("2048/index.html"));

    //Window focus and sizing stuff
    viewer->setFocusPolicy(Qt::ClickFocus);
    viewer->setWindowFlags(Qt::Window| Qt::WindowTitleHint );

    viewer->show();
    viewer->setGeometry(viewer->x(),viewer->y(),380,570);
    viewer->setMinimumWidth(330);
    viewer->setMaximumWidth(380);

    return app.exec();
}
