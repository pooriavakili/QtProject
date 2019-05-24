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
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    width: 2500
    height: 1000
    title: qsTr("موسسه حقوقی بین المللی پارسیان پرتو ایزدی")

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
            x:470
            y:-39

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

        Rectangle{
            width: 500
            height:80
            y:110
            color: "gray"
            x:500
            radius: 40
            Text{
                y:-25
                x:130
                font.pixelSize: 60
                text: "ورود به سامانه ثبت پارسیان"
                color: "white"
                font.family: "IranNastaliq"
            }

        }

        TextField{
            id: textField
            x:650
            y: 210
            onEditingFinished: console.log( go())
            width: 194

            height: 40
            validator: RegExpValidator{regExp:/[a-z-a_]+([A-Z]*)/}



            function go(){
                if(textField.validator(/[a-z-a_]+([A-Z]*)/)){
                    return loader2.source="ParSianpartoizady.qml"
                }
                else
                    return loader1.source= "Sabtelogin.qml"
            }
        }













        Text{
            x:743
            y:textField.y+textField.height+1
            font.pixelSize: 12
            visible: textField.text !=="" && textField.text.length !=="number"
            text: qsTr("لطفا  عددیا حروف ننوسید سیمبل قبول")


        }

        Label {
            font.family: "IranNastaliq"
            id: label
            x:900
            y:180
            width: 89
            height: 23
            text: qsTr("نام ونام خانوادگی")
            font.pixelSize: 45

        }


        TextField {
            id: textFieldNationalCode
            x:650

            validator: RegExpValidator{regExp:/[00-00-00_]+([0-9]*)/}
            onEditingFinished: console.log(fun())
            width: 194

            height: 40
            function fun(){

                if(textFieldNationalCode.text.length==10){
                    return loader2.source="ParSianpartoizady.qml"
                }
                else if(textFieldNationalCode.text.length>10){
                    return loader1.source= "Sabtelogin.qml"

                }
                else if(textFieldNationalCode.text.length<10){
                    loader1.source="Sabtelogin.qml"

                }

            }






            maximumLength: 10


            y: 270




        }


    }
    Text{
        x:838
        y: textFieldNationalCode.y + textFieldNationalCode.height + 2
        visible: textFieldNationalCode.text !== "" && textFieldNationalCode.text.length !== 10
        text: qsTr("کاراکتر بایدتا 10 تاباشد")

    }






    Label {
        font.family: "IranNastaliq"
        id: label1
       x:965
        y: 240
        width: 20
        height: 10
        text: qsTr("کدملی")
        font.pixelSize: 45


    }




    TextField {
        id: textFieldnationalcode1
        x:650
        y: 325
        width: 194

        height: 40
        onEditingFinished: console.log(cc())
        validator:RegExpValidator{regExp:/[a-z-a_]+([com-org]*)+([0-9]*)/}
        function cc(){
            if(textFieldnationalcode1.validator(/[a-z-a_]+([com-org]*)+([0-9]*)/)){
                return loader2.source="ParSianpartoizady.qml"
            }
            else
            {
                return loader1.source= "Sabtelogin.qml"
            }
        }

    }

    Text{
        x:718
        font.pixelSize: 12
        y:textFieldnationalcode1.y+textFieldnationalcode1.height+2
        visible: textFieldnationalcode1.text!== "" && textFieldnationalcode1.text.length !== "com"
        text:qsTr("لطفادات کام،دات نت ،ات ساین داشته باشد")

    }


    Label {
        id: label2
        x:910
        y: 300
        width: 72
        font.family: "IranNastaliq"

        height: 18
        text: qsTr("پست الکترونیک")
        font.pixelSize: 43

    }

    TextField {
        id: textFieldNationalCode6
        x:650
        maximumLength: 11
        y:380
        width: 194

        height: 40
        validator:RegExpValidator{regExp: /[00-00-00_]+([0-9]*)/ }


        onEditingFinished: console.log(shop())
        function shop(){
            if(textFieldNationalCode6.text.length==11){
                return loader2.source="ParSianpartoizady.qml"
            }
            else if(textFieldNationalCode6.text.length>11){
                return loader1.source= "Sabtelogin.qml"
            }
            else if(textFieldNationalCode6.text.length<11){
                loader1.source="Sabtelogin.qml"

            }


        }

    }
    Text{

        x:743
        y: textFieldNationalCode6.y + textFieldNationalCode6.height + 2
        visible: textFieldNationalCode6.text !== "" && textFieldNationalCode6.text.length !== 11
        font.pixelSize: 12
        text: qsTr("شماره همراه شما تا11رقم باید باشد")

    }

    Label {
        font.family: "IranNastaliq"
        id: label3
        x:930
        font.pixelSize: 45

        y: 350
        width: 55
        height: 19
        text: "همراه"

    }

    TextField {
        id: textFieldnationalcode3
        x:650
        echoMode: TextInput.PasswordEchoOnEdit
        width: 194

        height: 40
        validator: IntValidator{}

        onEditingFinished: console.log(click())
        maximumLength: 4


        y: 440
        function click(){
            if(textFieldnationalcode3.text.length==4){
                return loader2.source="ParSianpartoizady.qml"
            }
            else if(textFieldnationalcode3.text.length>4){
                return loader1.source="Sabtelogin.qml"
            }
            else if(textFieldnationalcode3.text.length<4){
                return loader1.source="Sabtelogin.qml"
            }

        }
    }
    Text{
        x:760
        y:textFieldnationalcode3.y+textFieldnationalcode3.height+2
        visible: textFieldnationalcode3.text !== "" && textFieldnationalcode3.text.length !== 4
        text: "رمزوتکرار رمز شما تا4عددبایدباشد"
        font.pixelSize: 12

    }



    Label {
        font.family: "IranNastaliq"
        id: label4
        x:935
        y: 410
        width: 49
        height: 13
        text: qsTr("رمزعبور")
        font.pixelSize: 45




    }

    TextField {


        id: textFieldnationalcode6
        x:650
        y: 510

        maximumLength: 4
        width: 194

        height: 40
        onEditingFinished: console.log(login())
        echoMode: TextInput.PasswordEchoOnEdit
        function login(){
            if(textFieldnationalcode6.text.length==4){
                return loader2.source="ParSianpartoizady.qml"
            }
            else if(textFieldnationalcode6.text.length>4){
                return loader1.source="Sabtelogin.qml"
            }
            else if(textFieldnationalcode6.text.length<4){
                return loader1.source="Sabtelogin.qml"
            }

        }


    }


    Label {
        font.family: "IranNastaliq"
        id: label5
        x:915
        y:485
        width: 66
        height: 14
        font.pixelSize: 45
        text: qsTr("تکراررمزعبور")
    }






    Image{
        id:img4
        source: "بعدی.jpg"
        sourceSize:  Qt.size(100,100)
        y:750
        x:0
        Loader{
            id:loader2
        }
        MouseArea{
            anchors.fill: img4
            onClicked: loader2.source="ParSianpartoizady.qml"
        }
    }

    Text{
        id:text2
        x:570
        y:730
        text: "فقط یک تصمیم برای تغییر یک سرنوشت کافیست"
        font.pixelSize: 45
        color: "red"
        font.family: "IranNastaliq"
        ParallelAnimation{
            ColorAnimation{
                target: text
                from: "black"
                to:"black"
                property: "x"
                duration: 1000

            }
            ScaleAnimator{
                target: text
                from:20
                to:1
                duration: 1000

            }
            running: true
        }
    }

    Image{
        id:img3
        source:  "قبلی.jpg"
        sourceSize: Qt.size(100,100)
        y:750
        x:1500


        Loader{
            id:loader1
        }
        MouseArea{
            anchors.fill: img3
            onClicked: loader1.source="main.qml"
        }
    }
    Rectangle{
        id:rec3
        width:300
        height: 70
        radius: 40
        color: "gray"
        x:600
        y:570
        MouseArea {

           anchors.fill:rec3


            id:text6
            x:700
            y:575




            onClicked: { webEngine.url = text15.text; webBack.visible = true; }


            Text{
                id:text15
                text: "تایید"
                font.family: "IranNastaliq"

                color: "white"
                x:130
                y:-50
                font.pixelSize:75
                ParallelAnimation{
                    ColorAnimation{
                        target: text15
                        from:"white"
                        to:"white"
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

    }









    Rectangle {
        id: webBack

        anchors.fill: parent

        visible: false


        WebEngineView{
            id:webEngine


            anchors.fill: parent

            url:"https://api.kavenegar.com/v1/70554150624D75784B6539776D625A423949435373513D3D/sms/send.json?receptor=09120622698&sender=100065995&message=test1
 ,https://api.kavenegar.com/v1/70554150624D75784B6539776D625A423949435373513D3D/sms/send.json?receptor=09190224908&sender=100065995&message=test2,https://api.kavenegar.com/v1/70554150624D75784B6539776D625A423949435373513D3D/sms/send.json?receptor=09901140320&sender=100065995&message=test3"
}

        Button {
            width: 84; height: 84
            text: ""
            anchors { left: parent.left; top: parent.top; margins: 10}
            onClicked: { webEngine.stop(); webBack.visible = false }
        }


}










}







