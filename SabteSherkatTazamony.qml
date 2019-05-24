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
import "Click.js" as JAVASCRIPT
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
            id:img1
            sourceSize: Qt.size(100,100)
            x:1500
            y:750
            Loader{
                id:loader1
            }
            MouseArea{
                anchors.fill: img1
                onClicked: loader1.source="SabetAnvaeSherkat.qml"
            }
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
        ListView{
            x:500
            y:100

            Rectangle{

                width: 617
                height: 300
                Text{
                    font.pixelSize: 15
                    font.family: "vazir"
                    text:"1-مدارک هویتی:کپی شناسنامه وکارت ملی همه اعضاءهیئت مدیره ،مدیر عامل بازرسان
2-اصل گواهی عدم سوءپیشینه همه اعضاء هیئت مدیره،مدیر عامل وبازرسان(1)
3-دونسخه اظهارنامه تکمیل وامضاءشده
4-دونسخه اساسنامه تکمیل وامضاءشده
5-اصل گواهینامه بانکی مبنی برپرداخت سرمایه تعهدی حداقل %35سرمایه   همراه بافیش واریزی
6-اصل مجوز فعالیت ازمراجع ذیربط درموردی که ثبت موضوع نیازبه مجوز داشته باشد
7-دو نسخه صورتجلسه مجمع عمومی وموسسین تکمیل وامضاشده
8-دونسخه صورتجلسه هیات مدیره تکمیل وامضاءشده
9-اصل وکالتنامه وکیل دادگستری درصورتی که ثبت شرکتهاتوسط وکیل صورت پذیرد
10درمواردی که سهامدارشخص حقیقی باشدارائه تصویر گذرنامه به همراه کدفرگیرملی
11-درمواردی که سهامدارشخص حقوقی خارجی باشد بایستی اصل وترجمه رسمی اساسنامه
(1)چنانچه بازرسان ازموسسات حسابرسی باشندنیازبه ارائه گواهی عدم سوءپیشینه دارند-
(2)به انضمام اصل وترجمه گواهی ثبت درکشور ثبت کننده ومعرفینامه نماینده مربوطه.
نکته:موسسه هانیازبه سوءپیشینه ندارد

"
                }
            }







        }
        TextField{
            text: " تعاونی"
            width: 300

            height: 50
            x:600
            y:410
        }
        TextArea{
            id:text4
            width: 400

            height: 200
            x:600
            y:470
            background: Rectangle{
                border.color: "black"
                width: 400
                height: 200
            }
        }


        TextField {
            id:phoneNumber
            width: 5
            height: 5
            placeholderText: "09901140322","09120622698"
            font.pixelSize: 2




        }

        TextField {
            id:emailAddress
            width: 5
            height: 5
            placeholderText: "parsianpi8@gmail.com"
            font.pixelSize: 2

        }




        TextArea{
            id:message
            width: parent.width
            height: 180
            wrapMode: Text.WordWrap
        }
        property string engine : '<font color="#1dacfc"><b>v4 (JavaScript)</b></font>';
        property int engineType : 0; //0 = JavaScript, 1 = C++
        //email
        ActionButton{
            icon:  "\uf003";
            icon_color:  "#fd7823";
            Image{
                source: "imageso.png"
                sourceSize: Qt.size(100,100)

            }

            x:620
            y:680
            onSendSignal:      {
                switch (engineType) {
                case 0 :
                    Qt.openUrlExternally(JAVASCRIPT.sendemail(emailAddress.text.toString()));
                    break;
                case 1 :
                    Qt.openUrlExternally(modelUrl.sendemail(emailAddress.text.toString()));
                    break;
                default : 0;
                }
            }

        }
        //sms
        //telegram
        ActionButton{
            x:915
            y:680
            icon:  "\uf003";
            icon_color:  "#fd7823";
            Image{
                source: "ok.png"
                sourceSize: Qt.size(80,80)


            }
            onSendSignal: {

                Qt.openUrlExternally(JAVASCRIPT.shareTelegram(message.text.toString()))
                Qt.openUrlExternally(modelUrl.shareTelegram(message.text.toString()))
            }

        }

        ActionButton{
            icon:  "\uf003";
            icon_color:  "#fd7823";
            Image{
                source: "images7 (3).jpg"
                sourceSize: Qt.size(70,70)
            }

            x:710
            y:680



            Rectangle {
                id: webBack

                anchors.fill: parent

                visible: false



                WebEngineView{

                    id:webEngine
                    anchors.fill: parent
                    url: "https://api.kavenegar.com/v1/70554150624D75784B6539776D625A423949435373513D3D/sms/send.json?receptor=09120622698&sender=100065995&message=test1
 ,https://api.kavenegar.com/v1/70554150624D75784B6539776D625A423949435373513D3D/sms/send.json?receptor=09190224908&sender=100065995&message=test2,https://api.kavenegar.com/v1/70554150624D75784B6539776D625A423949435373513D3D/sms/send.json?receptor=09901140320&sender=100065995&message=test3"
                }

                Button {
                    background: Image{
                        source: "images7 (3).jpg"
                        sourceSize: Qt.size(60,60)
                    }

                    width: 84; height: 84
                    text: ""
                    anchors { left: parent.left; top: parent.top; margins: 10}
                    onClicked: { webEngine.stop(); webBack.visible = false }
                }
            }

        }








        Text{
            id:link
            textFormat: Text.RichText
            onLinkActivated: Qt.openUrlExternally(link)
            font.pixelSize: 50
            color: "#777"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button{
            text: ""
              background: Image{
                  source: "OK BROWSE.jpg"
                  sourceSize: Qt.size(70,70)
              }

            x:780
            y:680
            id:clicked
            onClicked:dialog.open()|dialog.Save
        }

        FileDialog{
            x:840
            y:680
            id:dialog
            folder: shortcuts.home
            onAccepted: {
                console.log(FileDialog.fileUrls|text.text)

            }
            Component.onCompleted: visible=false
        }
        Button{
            text: ""
            x:850
              background: Image{
                  source: "OK ATTACH.jpg"
                  sourceSize: Qt.size(70,70)
              }

            y:680
            id:double1
            onClicked: dialog2.open()|dialog2.Save



        }
        Image{
            id:image
        }

        FileDialog{
            id:dialog2
            x:900
            y:680
            folder: shortcuts.home
            onAccepted: {
                console.log(FileDialog.fileUrl|image.Loading)
            }

        }

    }
    Text{
        text: "جای شعار"
        x:800
        y:800
        font.family: "IranNastaliq"
        color: "red"
        font.pixelSize: 40
    }
}
