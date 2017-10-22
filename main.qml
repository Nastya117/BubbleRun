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
                    stava.replace(qot)
                }
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
            stava.replace(aa1)
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
            //stava.replace(че-нить)
        }
    }

}




Item
{
    id: aa1
    visible: false


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
            stava.replace(kak)
            aurum.startau()
        }
    }

}



}
