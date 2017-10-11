import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import Auu 1.0

ApplicationWindow {
    id: w
    visible: true


    Auu
    {
        anchors.fill: parent
        id: aurum
        panaxa: rec.x;
        panaya: rec.y
    }


    Rectangle
    {
        id: rec;
        radius: 20
        width: 20
        height: 20
        x: w.width * aurum.ama
        y: w.height - w.height * aurum.fric

        color: "red"

        Behavior on x {
            NumberAnimation { duration: 1500 }
        }

        Behavior on y {
            NumberAnimation { duration: 700 }
        }
    }

}
