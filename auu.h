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

class Auu : public QQuickPaintedItem
{

    Q_OBJECT
    Q_PROPERTY(double ama MEMBER ama NOTIFY amaChanged)
    Q_PROPERTY(double fric MEMBER fric NOTIFY fricChanged)
    Q_PROPERTY(int panaxa READ panax WRITE pana1x NOTIFY papanax)
    Q_PROPERTY(int panaya READ panay WRITE pana1y NOTIFY papanay)
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

public slots:
        void startau();
        int vor();
        void sova();






};

#endif // AUU_H
