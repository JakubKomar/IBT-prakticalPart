import QtQuick
import QtQuick.Controls
import "../componets"

Item {
    id: fuelMod
    width: 1750
    height: 1060
    Rectangle {
        id: rectangle
        color: "#000000"
        border.color: "#000000"
        anchors.fill: parent


        Rectangle {
            id: centralTankImg
            y: 400
            width: 602
            height: 545
            color: "#00ffffff"
            border.color: "#ffffff"
            border.width: 3
            anchors.horizontalCenter: parent.horizontalCenter

            Swich2stateWarning {
                id: pumpCTR_L
                x: 76
                y: 274
                togled: false
                description: "CTR"
                onClicked:{
                    ControlFuel.toglePump("ctr1")
                }
            }

            Swich2stateWarning {
                id: pumpCTR_R
                x: 376
                anchors.right: parent.right
                anchors.top: parent.top
                description: "CTR"
                anchors.rightMargin: 76
                anchors.topMargin: 274
                onClicked:{
                    ControlFuel.toglePump("ctr2")
                }
            }

        }

        Swich2crossFeedInfo {
            id: swich2crossFeedInfo1
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 425
            anchors.topMargin: 425

            onClicked: {
                ControlFuel.togleCrossFeed(togled)
            }
        }





        Rectangle {
            id: rectangle1
            y: -2
            width: 844
            height: 361
            color: "#00ffffff"
            border.color: "#ffffff"
            border.width: 2
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter

            CircularDial {
                id: leftTank
                x: 60
                anchors.right: centerTank.left
                anchors.top: parent.top
                maxValue: 8620
                anchors.topMargin: 50
                labelText: "LEFT"
                anchors.rightMargin: 2


            }

            CircularDial {
                id: centerTank
                x: 312
                y: 50
                anchors.top: parent.top
                value: 28580
                maxValue: 28580
                labelText: "CENTER"
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CircularDial {
                id: rightTank
                x: 534
                anchors.left: centerTank.right
                anchors.top: parent.top
                maxValue: 8620
                anchors.topMargin: 50
                labelText: "RIGHT"
                anchors.leftMargin: 2
            }

            Text {
                id: text1
                y: 8
                color: "#007cf3"
                text: qsTr("FUEL")
                font.pixelSize: 33
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }


        InfoIndicator {
            id: infoIndicator
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 46
            anchors.leftMargin: 162
            status: false
            description: "ENG VAL\nCLOSED"
        }

        InfoIndicator {
            id: infoIndicator1
            x: 1412
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 46
            anchors.rightMargin: 162
            status: false
            description: "ENG VAL\nCLOSED"
        }



        WarningIndicator {
            id: warningIndicator
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 174
            anchors.leftMargin: 162
            status: false
            warText: "FILTER\nBYPASS"
        }




        WarningIndicator {
            id: warningIndicator1
            x: 1448
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 162
            anchors.topMargin: 174
            status: false
            warText: "FILTER\nBYPASS"
        }




        InfoIndicator {
            id: infoIndicator2
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 162
            anchors.topMargin: 330
            status: false
            description: "SPAR VAL\n CLOSED"
        }




        InfoIndicator {
            id: infoIndicator3
            x: 1448
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 162
            anchors.topMargin: 330
            status: false
            description: "SPAR VAL\\n CLOSED"
        }

        Swich2stateWarning {
            id: pumpAFT_L
            y: 739
            anchors.left: parent.left
            description: "AFT"
            anchors.leftMargin: 102

            onClicked:{
                ControlFuel.toglePump("lft1")
            }
        }

        Swich2stateWarning {
            id: pumpFWD_L
            width: 150
            height: 206
            anchors.left: pumpAFT_L.right
            anchors.top: pumpAFT_L.bottom
            description: "FWD"
            anchors.topMargin: -206
            anchors.leftMargin: 6
            onClicked:{
                ControlFuel.toglePump("lft2")
            }
        }

        Swich2stateWarning {
            id: pumpFWD_R
            x: 1322
            anchors.right: parent.right
            anchors.top: parent.top
            description: "FWD"
            anchors.topMargin: 739
            anchors.rightMargin: 278
            onClicked:{
                ControlFuel.toglePump("rgt2")
            }
        }

        Swich2stateWarning {
            id: pumpAFT_R
            anchors.left: pumpFWD_R.right
            anchors.top: pumpFWD_R.bottom
            description: "AFT"
            anchors.topMargin: -206
            anchors.leftMargin: 10
            onClicked:{
                ControlFuel.toglePump("rgt1")
            }
        }

    }
    Connections{
        target:ControlFuel
    }
    Connections{
        target:RenderFuel

        function onSetCrossFeed(state){
            swich2crossFeedInfo1.togled=state
        }
        function onSetPumpSwich(name,state){
            switch(name){
                case "lft1":{
                    pumpAFT_L.togled=state
                    break;
                }
                case "lft2":{
                    pumpFWD_L.togled=state
                    break;
                }
                case "ctr1":{
                    pumpCTR_L.togled=state
                    break;
                }
                case "ctr2":{
                    pumpCTR_R.togled=state
                    break;
                }
                case "rgt1":{
                    pumpAFT_R.togled=state
                    break;
                }
                case "rgt2":{

                    pumpFWD_R.togled=state
                    break;
                }

            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:3}D{i:4}D{i:2}D{i:5}D{i:7}D{i:8}D{i:9}D{i:10}D{i:6}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:1}D{i:21}D{i:22}
}
##^##*/
