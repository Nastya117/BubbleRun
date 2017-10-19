QT += qml quick

CONFIG += c++11

QT += multimedia multimediawidgets

INCLUDEPATH += 3rdparty/fftreal


SOURCES += main.cpp \
    3rdparty/fftreal/stopwatch/ClockCycleCounter.cpp \
    3rdparty/fftreal/stopwatch/StopWatch.cpp \
    3rdparty/fftreal/fftreal_wrapper.cpp \
    auu.cpp \
    app/engine.cpp \
    app/frequencyspectrum.cpp \
    app/levelmeter.cpp \
    app/mainwidget.cpp \
    app/progressbar.cpp \
    app/settingsdialog.cpp \
    app/spectrograph.cpp \
    app/spectrumanalyser.cpp \
    app/tonegenerator.cpp \
    app/tonegeneratordialog.cpp \
    app/utils.cpp \
    app/waveform.cpp \
    app/wavfile.cpp

RESOURCES += qml.qrc \
    app/spectrum.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    3rdparty/fftreal/bwins/fftrealu.def \
    3rdparty/fftreal/eabi/fftrealu.def \
    3rdparty/fftreal/FFTReal.dsp \
    3rdparty/fftreal/FFTReal.dsw \
    3rdparty/fftreal/license.txt \
    3rdparty/fftreal/readme.txt \
    3rdparty/fftreal/testapp.dpr \
    3rdparty/fftreal/fftreal.pas \
    build_apk.sh \
    Wig7e6EnQhU.jpg \
    Wig7e6EnQhU.jpg \
    Wig7e6EnQhU.jpg

HEADERS += \
    3rdparty/fftreal/stopwatch/ClockCycleCounter.h \
    3rdparty/fftreal/stopwatch/ClockCycleCounter.hpp \
    3rdparty/fftreal/stopwatch/def.h \
    3rdparty/fftreal/stopwatch/fnc.h \
    3rdparty/fftreal/stopwatch/fnc.hpp \
    3rdparty/fftreal/stopwatch/Int64.h \
    3rdparty/fftreal/stopwatch/StopWatch.h \
    3rdparty/fftreal/stopwatch/StopWatch.hpp \
    3rdparty/fftreal/Array.h \
    3rdparty/fftreal/Array.hpp \
    3rdparty/fftreal/def.h \
    3rdparty/fftreal/DynArray.h \
    3rdparty/fftreal/DynArray.hpp \
    3rdparty/fftreal/fftreal_wrapper.h \
    3rdparty/fftreal/FFTReal.h \
    3rdparty/fftreal/FFTReal.hpp \
    3rdparty/fftreal/FFTRealFixLen.h \
    3rdparty/fftreal/FFTRealFixLen.hpp \
    3rdparty/fftreal/FFTRealFixLenParam.h \
    3rdparty/fftreal/FFTRealPassDirect.h \
    3rdparty/fftreal/FFTRealPassDirect.hpp \
    3rdparty/fftreal/FFTRealPassInverse.h \
    3rdparty/fftreal/FFTRealPassInverse.hpp \
    3rdparty/fftreal/FFTRealSelect.h \
    3rdparty/fftreal/FFTRealSelect.hpp \
    3rdparty/fftreal/FFTRealUseTrigo.h \
    3rdparty/fftreal/FFTRealUseTrigo.hpp \
    3rdparty/fftreal/OscSinCos.h \
    3rdparty/fftreal/OscSinCos.hpp \
    3rdparty/fftreal/test_fnc.h \
    3rdparty/fftreal/test_fnc.hpp \
    3rdparty/fftreal/test_settings.h \
    3rdparty/fftreal/TestAccuracy.h \
    3rdparty/fftreal/TestAccuracy.hpp \
    3rdparty/fftreal/TestHelperFixLen.h \
    3rdparty/fftreal/TestHelperFixLen.hpp \
    3rdparty/fftreal/TestHelperNormal.h \
    3rdparty/fftreal/TestHelperNormal.hpp \
    3rdparty/fftreal/TestSpeed.h \
    3rdparty/fftreal/TestSpeed.hpp \
    3rdparty/fftreal/TestWhiteNoiseGen.h \
    3rdparty/fftreal/TestWhiteNoiseGen.hpp \
    auu.h \
    app/engine.h \
    app/frequencyspectrum.h \
    app/levelmeter.h \
    app/mainwidget.h \
    app/progressbar.h \
    app/settingsdialog.h \
    app/spectrograph.h \
    app/spectrum.h \
    app/spectrumanalyser.h \
    app/tonegenerator.h \
    app/tonegeneratordialog.h \
    app/utils.h \
    app/waveform.h \
    app/wavfile.h

SUBDIRS += \
    3rdparty/fftreal/fftreal.pro \
    app/app.pro
