#include "auu.h"
#include <QPainter>
#include <QDebug>
#include <QDir>
#include <QStandardPaths>
#include <QSize>
#include <QRgb>

static const int war =
        #include "1.txt"
        ;

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
    if (ur)
    {
        if (!putt(panaxa, panaya))
        {
            ploho();
            ur = false;
        }
        if (panaxa < 300 && panaxa > 250 && panaya > 300 && panaya < 350)
        {
            horosho();
            ur = false;
        }
    }
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
    fric /= 1003;
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






void Auu::startau()
{
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

void Auu::stopau()
{
    audio->stop();
    fric = 0;
    ama = 0;
    fricChanged();
    amaChanged();
}

int Auu::vor()
{
    return war;
}

void Auu::sova()
{
    QString d = QStandardPaths::writableLocation(QStandardPaths::DocumentsLocation) + "/BubbleRun.jpg";
    img->save(d);
    img->fill(Qt::white);
}

QVariantList Auu::urki()
{
    QString d = QStandardPaths::writableLocation(QStandardPaths::DocumentsLocation) + "/BubbleRun.txt";
    QFile fi(d);
    if (fi.open(QFile::ReadOnly)) {
        QByteArray dat = fi.readAll();
        QJsonDocument doco = QJsonDocument::fromJson(dat);
        return doco.toVariant().toList();
    } else {
        QVariantList rez;
        QVariantMap a;
        a["no"] = QVariant("1");
        a["nom"] = QVariant("Уровень 1");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/1.png");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("2");
        a["nom"] = QVariant("Уровень 2");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/2.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("3");
        a["nom"] = QVariant("Уровень 3");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/3.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("4");
        a["nom"] = QVariant("Уровень 4");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/4.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("5");
        a["nom"] = QVariant("Уровень 5");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/5.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("6");
        a["nom"] = QVariant("Уровень 6");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/6.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("7");
        a["nom"] = QVariant("Уровень 7");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/7.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("8");
        a["nom"] = QVariant("Уровень 8");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/8.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("9");
        a["nom"] = QVariant("Уровень 9");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/9.jpg");
        rez.append(QVariant::fromValue(a));

        a["no"] = QVariant("10");
        a["nom"] = QVariant("Уровень 10");
        a["pro"] = QVariant("n");
        a["ka"] = QVariant(":/10.jpg");
        rez.append(QVariant::fromValue(a));

        return rez;
    }
}

void Auu::cgamga(QString a)
{
    img->load(a);
    update();
    ur = true;
}




bool Auu::putt(int x, int y)
{

    if (x < 5)
        x += 5;

    if (y < 5)
        y += 5;

    for (int i = x - 5; i < x + 5; ++i)
        for (int j = y - 5; j < y + 5; ++j)
        {
            if (qGreen(img->pixel(i, j)) - qBlue(img->pixel(i, j)) > 10)
                return true;
        }
    return false;
}

void Auu::urchi(QString a)
{
    QString d = QStandardPaths::writableLocation(QStandardPaths::DocumentsLocation) + "/BubbleRun.txt";
    QVariantList urkid = urki();
    int num = a.toInt() - 1;
    QVariantMap ma = urkid[num].toMap();
    ma["pro"] = "y";
    urkid[num] = QVariant::fromValue(ma);

    QFile fi(d);
    fi.open(QFile::WriteOnly);

    QJsonDocument doco = QJsonDocument::fromVariant(QVariant::fromValue(urkid));
    fi.write(doco.toJson());
    urkiChanged();
}





Auu::Auu()
{
    img->fill(Qt::white);

}
