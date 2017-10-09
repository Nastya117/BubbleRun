#include "auu.h"
#include <QPainter>


void Auu::paint(QPainter *pan)
{
    pan->drawImage(0, 0, *img);
}

void Auu::pain()
{
    QPainter pan(img);
    pan.setPen(Qt::blue);
    pan.drawEllipse(panaxa, panaya, 2, 2);
    imgChanged();
}

void Auu::sst()
{
    if (audio->bytesReady() < 16384) {
        return;
    }

    QByteArray arr = star->readAll();
    arr.resize(16384);
    ama = 0; fric = 0;
    ff.calculateSpectrum(arr, 48000, 2, &ama, &fric);
    fric /= 1000;
    fric = qMin(1.0, fric);
    fric = (fric + fric0) / 2;
    fric0 = fric;
    ama = (ama + ama0) / 2;
    ama0 = ama;
    amaChanged();
    fricChanged();
}

int Auu::panax()
{
    return panaxa;
}

void Auu::pana1x(int x)
{
    panaxa = x;
    papanax();
    pain();
    update();
}

int Auu::panay()
{
    return panaya;
}

void Auu::pana1y(int y)
{
    panaya = y;
    papanay();
    pain();
    update();

}


Auu::Auu()
{
    img->fill(Qt::white);
    format.setSampleSize(16);
    format.setCodec("audio/pcm");
    format.setByteOrder(QAudioFormat::LittleEndian);
    format.setSampleType(QAudioFormat::SignedInt);
    format.setSampleRate(48000);
    format.setChannelCount(1);

    QAudioDeviceInfo info = QAudioDeviceInfo::defaultInputDevice();
    qDebug() << info.supportedSampleRates();
    if (!info.isFormatSupported(format)) {
        qWarning() << "Default format not supported, trying to use the nearest.";
        format = info.nearestFormat(format);
        qDebug() << format;
    }

    audio = new QAudioInput(format, this);
    audio->setNotifyInterval(30);
    connect(audio, &QAudioInput::notify, this, &Auu::sst);


    star = audio->start();

}
