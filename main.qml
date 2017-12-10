import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import Auu 1.0

ApplicationWindow
{
    id: w
    visible: true
    width: 640
    height: 480

    Text
    {
        text: aurum.vor()
    }



    Item
    {
        id: ass
        visible: false
        anchors.fill: parent
        z: 1000
        Text
        {
            visible: true
            anchors.fill: parent
            text: "      Перемещение шарика по оси x зависит от
громкости подаваемого звука,
по у - от частоты"
        }

        Button
        {
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: parent.width / 2.5
            anchors.rightMargin: parent.width / 2.5
            anchors.topMargin: parent.height * 0.83
            anchors.bottomMargin: parent.height * 0.13
            Text
            {
                anchors.centerIn: parent
                text: "OK"
            }
            onClicked:
            {
                qot.visible = true
                kak.visible = false
                urina.visible = false
                aa.visible = false
                ass.visible = false
            }
        }
    }




    Rectangle
    {
        id: akrol
        visible: false
        color: "#a6a6ff"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: parent.width / 7

        Text {
            text: "УРААААА!!!"
            anchors.centerIn: parent
            font.pointSize: 30
            color: "white"
        }

        Button
        {
            Text
            {
                text: "OK"
                font.pointSize: 30
                anchors.centerIn: parent
            }
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 7
            anchors.leftMargin: parent.width / 4
            anchors.rightMargin: parent.width / 4
            anchors.topMargin: parent.height / 1.5
            onClicked:
            {
                urina.visible = true
                kak.visible = false
                akrol.visible = false
            }
        }
    }


    ListView
    {
        id: urina
        visible: false
        orientation: ListView.Vertical
        model: aurum.urki()
        anchors.fill: parent
        anchors.top: parent.top
        anchors.topMargin: 25
        delegate:
            Button
        {
            text: modelData.nom
            background:
                Rectangle
            {
                color: if (modelData.pro == "y")
                           return "white"
                       else return "gray"
                border.width: 1
                border.color: "black"
            }
            anchors.left: parent.left
            anchors.leftMargin: parent.width / 6
            anchors.right: parent.right
            anchors.rightMargin: parent.width / 6

            onClicked:
            {
                kak.ur = modelData.no
                aurum.cgamga(modelData.ka)
                aurum.putt(1, 1)
                kak.visible = true
                urina.visible = false
                aurum.startau()
                but.visible = true
                akrol.visible = false
            }
        }
    }




    Item
    {
        id: kak
        anchors.fill: parent
        property string ur



        Auu
        {
            anchors.fill: parent
            id: aurum
            panaxa: rec.x;
            panaya: rec.y

            onPloho:
            {
                urina.visible = true
                kak.visible = false
                aurum.stopau()
            }

            onHorosho:
            {
                akrol.visible = true
                kak.visible = false
                aurum.urchi(kak.ur)
                urina.model = aurum.urki()
                aurum.stopau()
            }
        }




        Item
        {
            id: qqq
            anchors.fill: parent



            Button
            {
                text: "Сохранить"
                visible: false
                id: but
                anchors.right: parent.right
                anchors.rightMargin: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                onClicked:
                {
                    aurum.sova();
                }
            }


            Rectangle
            {
                id: rec;
                radius: 20
                width: 20
                height: 20
                x: w.width * aurum.ama * 1.5
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
    }


    Item
    {
        visible: true
        anchors.fill: parent
        id: aa
        z: 2


        Image
        {
            id: imma
            source: "Wig7e6EnQhU.jpg"
            anchors.centerIn: parent
        }


        Button
        {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: parent.width * 0.2
            anchors.leftMargin: parent.width * 0.2

            background:
                Rectangle
            {
                color: "white"
                border.color: "black"
                border.width: 2
            }


            text: "Играть"
            onClicked:
            {
                ass.visible = true
                aa.visible = false
            }
        }
    }



    Item
    {
        id: qot
        visible: false
        anchors.fill: parent

        Image
        {
            id: imma1
            source: "KcQH7HOstb4.jpg"
            anchors.centerIn: parent
        }

        Button
        {
            id: bu
            anchors.centerIn: parent

            background:
                Rectangle
            {
                color: "white"
                border.color: "black"
                border.width: 2
            }


            text: "Режим1"
            onClicked:
            {
                aa1.visible = true
                qot.visible = false
            }
        }

        Button
        {

            x: bu.x
            width: bu.width
            height: bu.height
            y: bu.y + 50
            text: "Режим2"

            background:
                Rectangle
            {
                color: "white"
                border.color: "black"
                border.width: 2
            }

            onClicked:
            {
                urina.visible = true
                kak.visible = false
                qot.visible = false
            }
        }

    }




    Item
    {
        id: aa1
        visible: false
        anchors.fill: parent


        Image
        {
            id: imma2
            source: "Wig7e6EnQhU.jpg"
            anchors.centerIn: parent
        }


        Button
        {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: parent.width * 0.2
            anchors.leftMargin: parent.width * 0.2

            background:
                Rectangle
            {
                color: "white"
                border.color: "black"
                border.width: 2
            }


            text: "Старт"
            onClicked:
            {
                kak.visible = true
                urina.visible = false
                aurum.startau()
                aurum.visible = true
                but.visible = true
                aa1.visible = false
            }
        }
    }
}
