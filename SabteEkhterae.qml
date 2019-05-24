import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.WebSockets 1.1
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import QtWebEngine 1.5
import QtQuick.Window 2.2
import QtLocation 5.9
import QtPositioning 5.8
import QtWebChannel 1.0
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
ApplicationWindow{
  width: 2500
height: 1000
visible: true
Rectangle{
 anchors.fill: parent
 gradient: Gradient{
     GradientStop{position: 0.2;color: "red"}
     GradientStop{position: 0.5;color: "white"}
 }

Image{
    source: "قبلی.jpg"
    sourceSize: Qt.size(100,100)
    y:760
    x:1500
    Loader{
        id:loader3
    }
    MouseArea{
        anchors.fill: parent
        onClicked: loader3.source="Sabty.qml"
    }
}
}
}
