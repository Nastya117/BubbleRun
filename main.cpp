#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QtMultimedia>
#include <QtMultimediaWidgets>
#include <iostream>

#include "auu.h"


int main(int argc, char *argv[])
{
    qmlRegisterType<Auu>("Auu", 1, 0, "Auu");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    engine.rootContext();

    return app.exec();
}
