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
            id:loader16
        }
        MouseArea{
            anchors.fill: parent
            onClicked: loader16.source="ParSianpartoizady.qml"
        }
    }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:950
        y:100
        Text{
            text: "ثبت انواع شرکت"
            font.family: "IranNastaliq"
            color: "white"
            x:80
            y:-10
            font.pointSize: 33
            Loader{
                id:loader1
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader1.source="SabetAnvaeSherkat.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
         x:950
        y:220
        Text{
            text: "اخذدفاترپلمپ"
            font.family: "IranNastaliq"
            color: "white"
            x:95
            y:-20
            font.pointSize: 36
            Loader{
                id:loader2
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader2.source="AkhzdafaterPolomp.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
       x:950
         y:370
        Text{
            text: "اخذکداقتصادی"
            font.family: "IranNastaliq"
            color: "white"
            x:95
            y:-15
            font.pointSize: 36
            Loader{
                id:loader3
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader3.source="AkhzeKodEghtesady.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:950
          y:520
        Text{
            text: "اخذکارت بازرگانی"
            font.family: "IranNastaliq"
            color: "white"
            x:74
            y:-15
            font.pointSize: 36
            Loader{
                id:loader4
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader4.source="AkhzKartBazarghany.qml"
            }
        }
        }

    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:950
        y:690
        Text{
            text: "ثبت تغییرات"
            font.family: "IranNastaliq"
            color: "white"
            x:100
            y:-10
            font.pointSize: 35
            Loader{
                id:loader6
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader6.source="SabteTaghirat.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:600
        y:100
        Text{
            text: "ثبت برند"
            font.family: "IranNastaliq"
            color: "white"
            x:120
            y:-22
            font.pointSize: 39
            Loader{
                id:loader7
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader7.source="SabteBrand.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:600
        y:220
        Text{
            text: "ثبت اختراع"
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
                onClicked: loader8.source="AkhzBerandhayMotabar.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:600
        y:520
        Text{
            text: "اخذگواهینامه ایزو"
            font.family: "IranNastaliq"
            color: "white"
            x:85
            y:-20
            font.pointSize: 39
            Loader{
                id:loader9
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader9.source="SabteEkhterae.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:600
        y:370
        Text{
            text: "اخذمفاصاحساب"
            font.family: "IranNastaliq"
            color: "white"
            x:85
            y:-20
            font.pointSize: 37
            Loader{
                id:loader10
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader10.source="AkhzMofasaHesab.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:600
         y:690
        Text{
            text: "اخذجوازتاسیس"
            font.family: "IranNastaliq"
            color: "white"
            x:95
            y:-20
            font.pointSize: 37
            Loader{
                id:loader11
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader11.source="AkhzJavazTasis.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:250
         y:100
        Text{
            text: "اخد رتبه"
            font.family: "IranNastaliq"
            color: "white"
            x:125
            y:-25
            font.pointSize: 39
            Loader{
                id:loader12
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader12.source="AkhzeRotbe.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
       x:250
         y:220
        Text{
            text: "اخد اظهارنامه"
            font.family: "IranNastaliq"
            color: "white"
           x:100
            y:-20
            font.pointSize: 39
            Loader{
                id:loader13
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader13.source="AkhzEzharName.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:250
         y:370
        Text{
            text: "اخذ سیب سلامت"
            font.family: "IranNastaliq"
            color: "white"
            x:72
            y:-20
            font.pointSize: 39
            Loader{
                id:loader14
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader14.source="AkhzSibSalamat.qml"
            }
        }
        }
    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:250
               y:520
        Text{
            text: "مجوز ازوزارت صنایع"
            font.family: "IranNastaliq"
            color: "white"
            x:58
            y:-20
            font.pointSize: 39
            Loader{
                id:loader15
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader15.source="MojavezAzVezaratSanaye.qml"
            }
        }
        }

    Rectangle{
        width: 300
        height: 70
        radius: 80
        color: "gray"
        x:250
       y:690
        Text{
            text: "گواهی ارزش افزوده"
            font.family: "IranNastaliq"
            color: "white"
            x:68
            y:-18
            font.pointSize: 39
            Loader{
                id:loader17
            }
            MouseArea{
                anchors.fill: parent
                onClicked: loader17.source="GovahiArzeshAfzoode.qml"
            }
        }
        }
    Text{
     text: "جای شعار"
     x:750
     y:800
     font.family: "IranNastaliq"
     color: "red"
     font.pixelSize: 40
    }
}
}

