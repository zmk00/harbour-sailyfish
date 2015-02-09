#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/harbour-sailyfish.qml")));

    return app.exec();
}
