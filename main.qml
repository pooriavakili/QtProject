import QtQuick 2.9
import QtQuick.Controls 2.0
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
//import io.qt.com 1.0

ApplicationWindow {
    visible: true
    width: 2500
    height: 1000
    title: qsTr("موسسه حقوقی بین المللی پارسیان پرتوایزدی")

    Rectangle{
        anchors.fill: parent
        gradient: Gradient{
            GradientStop{position: 0.2;color: "red"}
            GradientStop{position: 0.5;color: "white"}


        }

        Text{
            id:text
            text: "موسسه حقوقی بین المللی پارسیان پرتوایزدی"
            color: "white"
            x:220
            y:-60
            font.pixelSize:150

            font.family:"IranNastaliq"
            width: 1000
            height: 400
            ParallelAnimation{
                ColorAnimation{
                    target: text
                    property: "color"
                    from: "white"
                    to:"white"
                    duration: 1000
                }
                ScaleAnimator{
                    easing.type: Easing.InOutQuart
                    target: text
                    from:2

                    to:1
                    duration: 1000
                }
                running: true
            }
        }
        Text{
            id:text1
            text: "INTERNATIONAL LAW FIRM PARSIAN PARTO IZADI"
            color: "white"
            x:495
            y:210
            font.pixelSize: 25
            ParallelAnimation{
                ColorAnimation{
                    target: text1
                    property: "color"
                    from: "white"
                    to:"white"
                    duration: 1000
                }
                ScaleAnimator{
                    target: text1
                    from: 2
                    to:1
                    duration: 1000
                }
                running: true
            }

        }

        Text{
            text: "P.P.I"
            x:740
            y:245
            font.pixelSize: 30
            color: "white"
        }


        Image{

            x:650
            y:250
            sourceSize: Qt.size(150,200)
            Flipable{
                id:flipable
                width: 260
                height: 260
                property bool flipped:false
                front: Image{id:logo;source:"logo.jpg";anchors.centerIn:   parent;sourceSize: Qt.size(200,200)}
                back: Image{id:logo01;source:"Farahvahar 03.jpg";anchors.centerIn:   parent;sourceSize: Qt.size(300,300)}
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

        }


        Text{
            x:700
            y:480
            text: "ثبت پارسیان"
            color: "red"
            font.pixelSize: 70
            font.family: "IranNastaliq"
        }
        Image{
            source: "imagesok2.jpg"
            x:20
            y:431
            sourceSize: Qt.size(70,70)

        }
        Text{
            text: "02144745924"
            x:100
            y:455
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
            y:490
            sourceSize:Qt.size(50,50)
        }
        Text{
            text: "09120622698"
            id:text7
            x:100
            y:505
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
            y:540
            sourceSize: Qt.size(50,50)
        }
        Text{
            id:text8
            text: "09190224908"
            x:100
            y:550
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
            y:590
            sourceSize: Qt.size(50,50)
        }
        Text{
            id:text9
            text: "09901140320"
            x:100
            color: "red"
            y:600
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
            y:640
            sourceSize: Qt.size(50,50)

        }
        Text{
            id:text10
            text: "09901140324"
            x:100
            y:650
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
            y:690
            sourceSize: Qt.size(50,50)

        }
        Text{
            id:text11
            text: "09901140329"
            x:100
            y:700
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
                    source: "ok.png"
                    y:580
                    x:250
                    sourceSize: Qt.size(70,70)
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
                    source: "instagram_full-limoographic.png"
                    x:255
                    y:515
                    sourceSize: Qt.size(65,65)
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




        Text{
            text: "کلیه حقوق کپی رایت این اثر متعلق به شرکت بین المللی نرم افزاری پارسیان ایده  رویان می باشد،هرگونه کپی رایت از این اثر پیگرد قانونی دارد"
            x:370
            y:760
            color: "red"
            font.pixelSize: 40
            font.family: "IranNastaliq"
        }

        Image{
            id:img2
            source: "بعدی.jpg"
            sourceSize: Qt.size(100,100)
            x:0
            y:750
            Loader{
                id:loader12
            }

            MouseArea{
                anchors.fill:img2
                onClicked: loader12.source="Sabtelogin.qml"
            }
        }


    }









}
