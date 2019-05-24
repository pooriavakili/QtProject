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
        Text{
            id:text
            text: "موسسه حقوقی بین المللی پارسسیان پرتو ایزدی"
            font.family: "IranNastaliq"
            font.pixelSize: 80
            color: "white"
            x:520
            y:-40

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
                    from:50
                    to:1
                    duration: 1000


                }
                running: true
            }
        }
        Image{
            source: "قبلی.jpg"
            sourceSize: Qt.size(100,100)
            y:760
            x:1500
            Loader{
                id:loader1
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader1.source="Sabty.qml"
            }
        }

        Rectangle{
            width: 300
            height: 70
            radius: 80
            color: "gray"
            x:850
            y:100
            Text{
                text: "مسئولیت محدود"
                font.family: "IranNastaliq"
                color: "white"
                x:90
                y:-10
                font.pointSize: 33
                Loader{
                    id:loader2
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: loader2.source="SabteShekatMasouliatMahdood.qml"
                }
        }
        }




        Rectangle{
            id:rec2
            width: 300
            height: 70
            radius: 80
            color: "gray"
            x:850
            y:370
            Text{
                text: " سهامی عام"
                font.family: "IranNastaliq"
                color: "white"
                x:90
                y:-30
                font.pointSize: 45

                Loader{
                    id:loader3
                }
                MouseArea{
                    anchors.fill: rec2
                    onClicked: loader3.source="Sahamyam.qml"
                }
            }

            }

        Image{
            source: "قبلی.jpg"
            sourceSize: Qt.size(100,100)
            y:760
            x:1500

        }

        Rectangle{
            width: 300
            height: 70
            radius: 80
            color: "gray"
             x:850
            y:220
            Text{
                text: "موسسه"
                font.family: "IranNastaliq"
                color: "white"
                x:125
                y:-20
                font.pointSize: 36
                Loader{
                    id:loader4
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: loader4.source="SabteSherkatMoasese.qml"
                }
            }
            }

        Rectangle{
            width: 300
            height: 70
            radius: 80
            color: "gray"
            x:850
            y:690
            Text{
                text: "اخذکداقتصادی"
                font.family: "IranNastaliq"
                color: "white"
                x:100
                y:-10
                font.pointSize: 35
                Loader{
                    id:loader5
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: loader5.source="AkhzeKodEghtesady.qml"
                }
            }
            }
            Rectangle{
                width: 300
                height: 70
                radius: 80
                color: "gray"
                x:850
                  y:520
                Text{
                    text: "تضامنی"
                    font.family: "IranNastaliq"
                    color: "white"
                    x:105
                    y:-15
                    font.pointSize: 36
                    Loader{
                        id:loader6
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: loader6.source="SabteSherkatTazamony.qml"
                    }
                }
                }
            Rectangle{
                id:rec4
                width: 300
                height: 70
                radius: 80
                color: "gray"
                x:500
                y:100
                Text{
                    text: "مختلط غیر سهامی"
                    font.family: "IranNastaliq"
                    color: "white"
                    x:90
                    y:-22
                    font.pointSize: 39
                    Loader{
                        id:loader7
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: loader7.source="MokhtaletGirSahamy.qml"
                    }
                }
                }
            Rectangle{
                width: 300
                height: 70
                radius: 80
                color: "gray"
                x:500
                y:220
                Text{
                    text: "مختلط سهامی"
                    font.family: "IranNastaliq"
                    color: "white"
                    x:100
                    y:-20
                    font.pointSize: 39
                    Loader{
                        id:loader8
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: loader8.source="MokhtaletSahamy.qml"
                    }
                }
                }
            Rectangle{
                width: 300
                height: 70
                radius: 80
                color: "gray"
                x:500
                y:520
                Text{
                    text: "نسبی"
                    font.family: "IranNastaliq"
                    color: "white"
                    x:130
                    y:-10
                    font.pointSize: 35
                    Loader{
                        id:loader9
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: loader9.source="Nesbi.qml"
                    }
                }
                }
            Rectangle{
                width: 300
                height: 70
                radius: 80
                color: "gray"
                x:500
                y:370
                Text{
                    text: "تعاونی"
                    font.family: "IranNastaliq"
                    color: "white"
                    x:115
                    y:-20
                    font.pointSize: 37
                    Loader{
                        id:loader10
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: loader10.source="Taavony.qml"
                    }
                }
            }
            Text{
             text: "جای شعار"
             x:700
             y:800
         font.family: "IranNastaliq"
         color: "red"
         font.pixelSize: 40
        }
    }
    }




