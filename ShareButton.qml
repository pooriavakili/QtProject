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

Rectangle{
    property string icon
    property string icon_Color
    signal onSendSignal
    width: 72
    height: 72
    radius: 48
    color: "#fff"
    border.color: "#f2f2f2"
    border.width: 1
    Text{
       font.pixelSize: 38
       font.weight: Text.Fit
       anchors.centerIn: parent
       text: icon
       color: icon_Color
       scale: eventArea.containsPress?0.1:0.7
           Behavior on scale{
               NumberAnimation{
                   duration: 1000
               }

           }
    }
    MouseArea{
        id:eventArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked:onSendSignal()
    }

}
