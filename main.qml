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


    Item
    {
        id: kak

Auu
{
    anchors.fill: parent
    id: aurum
    panaxa: rec.x;
    panaya: rec.y
}

Item
{
id: qqq
anchors.fill: parent
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
    }


StackView
{
    id: stava
    anchors.fill: parent
    initialItem:
        Item
        {
            id: aa
            Button
            {
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.bottomMargin: 200
                text: "Играть"
                onClicked:
                {
                    stava.replace(kak)
                    aurum.startau()
                }
            }

        }
}



Item
{
    id: qot
    anchors.fill: parent
    Button
    {
        onClicked:
        {
            stava.replace(че-нить)
        }
    }

}



}
