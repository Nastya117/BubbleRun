#ifndef AUU_H
#define AUU_H
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickPaintedItem>
#include <QImage>

#include <QtMultimedia>
#include <QtMultimediaWidgets>
#include <iostream>
#include <app/spectrumanalyser.h>
#include <QVariant>

class Auu : public QQuickPaintedItem
{

    Q_OBJECT
    Q_PROPERTY(double ama MEMBER ama NOTIFY amaChanged)
    Q_PROPERTY(double fric MEMBER fric NOTIFY fricChanged)
    Q_PROPERTY(int panaxa READ panax WRITE pana1x NOTIFY papanax)
    Q_PROPERTY(int panaya READ panay WRITE pana1y NOTIFY papanay)
    //Q_PROPERTY(QVariantList urki READ urki NOTIFY urkiChanged)
    Q_PROPERTY(QImage *img MEMBER img NOTIFY imgChanged)
    public:
    QAudioInput* audio; // Class member
    QAudioFormat format;
    QIODevice *star;
    SpectrumAnalyserThread ff;


    void paint(QPainter*pan);
    QImage *img = new QImage(3000, 3000, QImage::Format_RGB16);
    void pain();
    double ama;
    int panaxa;
    int panaya;
    double fric;
    double ama0 = 0;
    double fric0 = 0;
    bool ur = false;


    void sst();
    int panax();
    void pana1x(int x);
    int panay();
    void pana1y(int y);

    Auu();

signals:
    void imgChanged();
    void papanax();
    void papanay();
    void amaChanged();
    void fricChanged();
    void ploho();
    void horosho();
    void urkiChanged();
public slots:
        void startau();
        void stopau();
        int vor();
        void sova();
        QVariantList urki();
        void cgamga(QString a);
        bool putt(int x, int y);
        void urchi(QString a);






};

#endif // AUU_H
