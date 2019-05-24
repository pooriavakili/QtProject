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
import QtGraphicalEffects 1.0
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

        Text{
            id:text
            x:570
            text: "موسسه حقوقی بین المللی پارسیان پرتوایزدی"
            font.family: "IranNastaliq"
            color: "white"
            font.pixelSize: 70
            y:-20
            ParallelAnimation{
                ColorAnimation{
                    target: text
                    from: "white"
                    to:"white"
                    property: "color"
                    duration: 1000
                }
                ScaleAnimator{
                    target: text
                    from: 50
                    to:1
                    duration: 1000
                }
                running: true
            }
        }

            Rectangle{
                id:rec
                width: 400
                radius: 40
                height:70
                x:1135
                y:235
                color: "gray"
                Text{
                    text: "ثبتی"
                    font.pixelSize: 60
                    font.family: "IranNastaliq"
                    x:200
                    y:-20
                    color: "white"
                }

                Loader{
                    id:loader1
                }
                MouseArea{
                    anchors.fill: rec
                    onClicked: loader1.source="Sabty.qml"
                }
            }





        Rectangle{
            id:rec1
            width: 400
            height: 70
            color: "gray"
            radius: 40
            y:240
            x:80
            Text{
                text: "حقوقی"
                font.family: "IranNastaliq"
                font.pixelSize: 70
                color: "white"
                x:150
                y:-30
            }
            Loader{
                id:loader2
            }
            MouseArea{
                anchors.fill: rec1
                onClicked: loader2.source="Hoghughy.qml"
            }
        }



    }



    Rectangle{
        id:rec2
        width: 400
        height: 70
        y:315
        x:1135

        color: "gray"
        radius: 40

        Text{
            text: "درباره ما"
            color: "white"
            font.family: "IranNastaliq"
            font.pixelSize: 60
            y:-30
            x:170
        }
        Loader{
            id:loader4
        }
        MouseArea{
            anchors.fill: rec2
            onClicked: loader4.source="Darbarema.qml"
        }
    }


    Flipable{
        id:flipable
        width: 260
        height: 260
        x:680
        y:120
        property bool flipped:false
        front: Image{id:logo;source:"logo.jpg";anchors.centerIn:   parent;sourceSize: Qt.size(280,280)}
        back: Image{id:logo01;source:"Farahvahar 03.jpg";anchors.centerIn:   parent;sourceSize: Qt.size(280,280)}
        transform: Rotation{
            id:rotation
            origin.x:flipable.width/2
            origin.y: flipable.height/2
            axis.x:0
            axis.y:1
            axis.z:0

        }
        states: State{
            name: "back"
            PropertyChanges{
                target: rotation
                angle:180

            }
            when: flipable.flipped
        }
        transitions: Transition{
            NumberAnimation{
                target: rotation;property: "angle";duration: 2000
            }
        }
        MouseArea{
            hoverEnabled: true
            anchors.fill: parent

            onExited:  {
                logo.scale=0.75
                flipable.flipped=!flipable.flipped
            }


        }

    }









    Rectangle{
        id:rec3
        width: 400
        height: 70
        color: "gray"
        radius: 40
        y:395
        x:1135
        Text{
            text: "تاریخچه"
            color: "white"
            font.pixelSize: 55
            font.family: "IranNastaliq"
            x:180
            y:-30
        }
        Loader{
            id:loader5
        }
        MouseArea{
            anchors.fill: rec3
            onClicked: loader5.source="Tarikhche.qml"
        }
    }




    Rectangle{
        id:rec4
        width: 400
        height: 70
        color: "gray"
        radius: 40
        y:320
        x:80
        Text{
            text:"تماس باما"
            font.pixelSize: 60
            color: "white"
            font.family: "IranNastaliq"
            x:150
            y:-30
        }

        Loader{
            id:loader6
        }
        MouseArea{
            anchors.fill: rec4
            onClicked: loader6.source="TamasBaMa.qml"
        }
    }

    Rectangle{
        width: 400
        height: 70
        color: "gray"
        radius: 40
        y:400
        x:80
        id:rec5
        Text{
            text: "افتخارات"
            font.pixelSize: 60
            font.family: "IranNastaliq"
            color: "white"
            x:130
            y:-20
        }
        Loader{
            id:loader8
        }
        MouseArea{
            anchors.fill: rec5
            onClicked: loader8.source="Eftetkharat.qml"
        }
    }



    Image{
        source: "imagesok2.jpg"
        x:20
        y:480
        sourceSize: Qt.size(70,70)

    }
    Text{
        text: "02144745924"
        x:100
        y:495
        font.pixelSize: 20
        color: "red"
        id:text5
        ParallelAnimation{
            ColorAnimation{
                target: text5
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text5
                from:20
                to:1
                duration: 1000
            }
            running: true
        }

    }



    Image{
        source: "images7 (3).jpg"
        x:30
        y:540
        sourceSize:Qt.size(50,50)
    }
    Text{
        text: "09120622698"
        id:text7
        x:100
        y:550
        font.pixelSize: 20
        color: "red"
        ParallelAnimation{
            ColorAnimation{
                target: text7
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text7
                from:20
                to:1
                duration: 1000
            }
            running: true
        }
    }
    Image{
        source: "images7 (3).jpg"
        x:30
        y:590
        sourceSize: Qt.size(50,50)
    }
    Text{
        id:text8
        text: "09190224908"
        x:100
        y:600
        color: "red"
        font.pixelSize: 20
        ParallelAnimation{
            ColorAnimation{
                target: text8
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text8
                from:20
                to:1
                duration: 1000
            }
            running: true
        }

    }

    Image{
        source: "images7 (3).jpg"
        x:30
        y:640
        sourceSize: Qt.size(50,50)
    }
    Text{
        id:text9
        text: "09901140320"
        x:100
        color: "red"
        y:650
        font.pixelSize: 20
        ParallelAnimation{
            ColorAnimation{
                target: text9
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text9
                from:20
                to:1
                duration: 1000
            }
            running: true
        }
    }
    Image{
        source: "images7 (3).jpg"
        x:30
        y:690
        sourceSize: Qt.size(50,50)

    }
    Text{
        id:text10
        text: "09901140324"
        x:100
        y:700
        color: "red"
        font.pixelSize:20
        ParallelAnimation{
            ColorAnimation{
                target: text10
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text10
                from:20
                to:1
                duration: 1000
            }
            running: true
        }
    }
    Image{
        source: "images7 (3).jpg"
        x:30
        y:740
        sourceSize: Qt.size(50,50)

    }
    Text{
        id:text11
        text: "09901140329"
        x:100
        y:750
        color: "red"
        font.pixelSize:20
        ParallelAnimation{
            ColorAnimation{
                target: text11
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text11
                from:20
                to:1
                duration: 1000
            }
            running: true
        }
    }

    Image{
        source: "instagram_full-limoographic.png"
        x:255
        y:515
        sourceSize: Qt.size(65,65)
    }
    Text{
        id:text12
        text: "parsianpi"
        x:324
        y:530
        font.pixelSize: 25
        color: "red"
        ParallelAnimation{
            ColorAnimation{
                target: text12
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text12
                from:20
                to:1
                duration: 1000
            }
            running: true
        }



    }
    Image{
        source: "ok.png"
        y:580
        x:250
        sourceSize: Qt.size(70,70)
    }
    Text{
        id:text13
        text: "@parsianpi"

        font.pixelSize: 25
        color: "red"
        x:315
        y:590
        ParallelAnimation{
            ColorAnimation{
                target: text13
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text13
                from:20
                to:1
                duration: 1000
            }
            running: true
        }
    }



    Image{
        source: "imageso.png"
        sourceSize: Qt.size(90,90)
        y:630
        x:235
    }
    Text{
        id:text14
        text: "parsianpi8@gmail.com"
        font.pixelSize: 25
        color: "red"
        x:320
        y:645
        ParallelAnimation{
            ColorAnimation{
                target: text14
                from:"red"
                to:"red"
                duration: 1000
                property: "color"
            }
            ScaleAnimator{
                target: text14
                from:20
                to:1
                duration: 1000
            }
            running: true
        }
    }

    Image{
        source: "images ok.png"
        x:255
        y: 690
        sourceSize:Qt.size(55,55)

    }

    Button {

        text: "http://www.parsianpi.com"


        id:text4

        x:315
        y:690
        font.pixelSize: 35
        onClicked: { webEngine.url = text6.text; webBack.visible = true; }

    }
    Button {

        text: "http://www.parsianpi.com"


        id:text6
        x:315
        y:690
        font.pixelSize: 40
        onClicked: { webEngine.url = text6.text; webBack.visible = true; }
        Rectangle{
            width: 500
            height: 60
            color: "white"
        }
        Text{
            id:text15
            text: "http://www.parsianpi.com"
            color: "red"
            x:6
            y:10
            font.pixelSize:25
            ParallelAnimation{
                ColorAnimation{
                    target: text15
                    from:"red"
                    to:"red"
                    duration: 1000
                    property: "color"
                }
                ScaleAnimator{
                    target: text15
                    from:20
                    to:1
                    duration: 1000
                }
                running: true
            }

        }
    }


    Rectangle {
        id: webBack

        anchors.fill: parent

        visible: false


        WebEngineView{
            id:webEngine
            anchors.fill: parent
            url:text6.text

        }
        Button {
            width: 84; height: 84
            text: ""
            anchors { left: parent.left; top: parent.top; margins: 10}
            onClicked: { webEngine.stop(); webBack.visible = false }
        }

    }

    Image{
        source: "قبلی.jpg"
        sourceSize: Qt.size(100,100)
        y:760
        x:1500
        Loader{
            id:loader16
        }
        MouseArea{
            anchors.fill: parent
            onClicked: loader16.source="Sabtelogin.qml"
        }
    }
    Rectangle{
        width: 400
        height: 70
        color: "gray"
        x:615
        y:400
        radius: 40
        id:rec6
        Text{
            text: "آگهی استخدام"
            font.pixelSize: 55
            color: "white"
            font.family: "IranNastaliq"
            x:130
            y:-15
        }
        Loader{
            id:loader7
        }
        MouseArea{
            anchors.fill: rec6
            onClicked: loader7.source="AghahiEstekhdam.qml"
        }
    }

    Text{
        text: "موفقیت چیزی نیست که بهایی برایش بپردازیداین شکست است که بهایش را خواهید پرداخت"
        x:480
        y:735
        font.pixelSize: 50
        font.family: "IranNastaliq"
        id:text20
        ParallelAnimation{
            ColorAnimation{
                target: text20
                property: "color"
                from: "red"
                to:"red"
                duration: 1000
            }
            ScaleAnimator{
                from: 50
                to:1
                target: text20
                duration: 1000
            }
            running: true
        }

        Item{
            width: 200
            height: 200
            Loader{
                id:loader12
            }
            Button{
                width: 130
                height: 70
                x:700
                y:1000
                onClicked:loader12.source="Sabtelogin.qml"
                text: "صفحه قبل"
            }
        }
    }
}












