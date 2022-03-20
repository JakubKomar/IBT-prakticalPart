import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"
    antialiasing: true
    layer.samples: 8
    layer.enabled: true

    Connections{
        target:ControlTemp
    }

    Item{
        id:leftSide
        width: parent.width/2
        height:parent.height
        layer.samples: 0

        Rectangle {
            id: rectangle
            color: "#00ff0061"
            border.color: "#00ffffff"
            anchors.fill: parent
            clip: true

            Image {
                id: image
                width: 441
                height: 902
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                source: "../pic/planeZoneTemp.png"
                anchors.horizontalCenterOffset: 14
                anchors.leftMargin: 0
                anchors.horizontalCenter: parent.horizontalCenter
                clip: false
                scale: 1
                sourceSize.width: 764
                rotation: 0
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: rectangle4
            x: 443
            y: 162
            width: 463
            height: 1
            color: "#ffffff"
            border.color: "#ffffff"
            border.width: 2
        }

        Rectangle {
            id: rectangle5
            x: 444
            y: 341
            width: 461
            height: 1
            color: "#ffffff"
            border.color: "#ffffff"
            border.width: 2
        }

        Rectangle {
            id: rectangle6
            x: 441
            y: 562
            width: 466
            height: 2
            color: "#ffffff"
            border.color: "#ffffff"
            border.width: 2
            rotation: -8.03
        }
    }
    Item{
        id:rightSide
        width: parent.width/2
        x:parent.width/2
        height:parent.height

        Column {
            id: column
            width: 815
            height: 659
            anchors.top: parent.top
            anchors.topMargin: 41
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 13
            rotation: 0

            TempModule{
                id: cont
                anchors.left: parent.left
                anchors.right: parent.right
                warningIndicator.status: 0
                verticaIndicatorDouble.text2.horizontalAlignment: Text.AlignHCenter
                verticaIndicatorDouble.text2.text: "DUC"
                description.text: "CONT"
                verticaIndicatorDouble.enableSecond: false
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                tempSlider.onValueChanged: {ControlTemp.setRheostat("cont_cab_temp",tempSlider.getVal())}
            }
            HalfTransparentBorder {
                id: halfTransparentBorder1
                anchors.left: parent.left
                anchors.right: parent.right
                grad2: "gray"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }

            TempModule{
                id: fwd
                anchors.left: parent.left
                anchors.right: parent.right
                warningIndicator.status: 0
                description.text: "FWD"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                tempSlider.onValueChanged: {ControlTemp.setRheostat("fwd_cab_temp",tempSlider.getVal())}
            }

            HalfTransparentBorder {
                id: halfTransparentBorder2
                anchors.left: parent.left
                anchors.right: parent.right
                grad2: "gray"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            TempModule{
                id: aft
                anchors.left: parent.left
                anchors.right: parent.right
                warningIndicator.status: 0
                description.text: "AFT"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                tempSlider.onValueChanged: {ControlTemp.setRheostat("aft_cab_temp",tempSlider.getVal())}
            }


            HalfTransparentBorder {
                id: halfTransparentBorder3
                anchors.left: parent.left
                anchors.right: parent.right
                grad2: "gray"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }

            Rectangle {
                id: rectangle1
                height: 92
                color: "#00ffffff"
                border.color: "#00484848"
                border.width: 2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                VerticaIndicatorDouble{
                    id: packs
                    x: 0
                    y: 3
                    height: 87
                    anchors.left: parent.left
                    anchors.right: parent.right
                    text2.text: "L"
                    text1.text: "R"
                    anchors.rightMargin: 0
                    anchors.leftMargin: 134
                }

                Rectangle {
                    id: rectangle2
                    width: 91
                    color: "#00ffffff"
                    border.color: "#00484848"
                    border.width: 2
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    TextCust {
                        id: text2
                        color: Styles.blueDark
                        text: qsTr("PACK")
                        anchors.fill: parent
                        font.pixelSize: 27
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: -8
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 8
                        anchors.topMargin: 0
                        font.capitalization: Font.AllUppercase
                    }
                }
            }



        }

        Swich2stateBasic{
            id: trimAir
            x: 30
            y: 814
            width: 157
            height: 164
            text: "T"
            swich2state.onText: "ON"
            swich2state.togled: false
            swich2state.offText: "OFF"
            swich2state.description: "TRIM\nAIR\nVALVE"
            onClicked:{ControlTemp.trimAir()}
        }

        Rectangle {
            id: cooling
            x: 420
            y: 763
            width: 390
            height: 253
            color: "#00ffffff"
            border.color: "#00ffffff"
            border.width: 1

            Swich2stateWarning{
                id: suplyFan
                width: 150
                height: 193
                text: ""
                anchors.left: parent.left
                anchors.top: parent.top
                swich2state.active2Bc: Styles.blueDark
                swich2state.active1Bc: "orange"
                swich2state.onText: "ALT"
                description: "SUPLY\nFAN"
                togled: false
                warningIndicator.warText: "OFF"
                anchors.topMargin: 42
                anchors.leftMargin: 17
                swich2state.description: "SUPLY\nFAN"
                swich2state.togled: false
                swich2state.offText: "NORM"
                onClicked:{ControlTemp.coolingSwich("supply")}
            }

            Swich2stateWarning{
                id: exhoustFan
                x: 217
                width: 150
                height: 193
                anchors.right: parent.right
                anchors.top: parent.top
                swich2state.active2Bc: Styles.blueDark
                swich2state.active1Bc: "orange"
                swich2state.onText: "ALT"
                togled: false
                description: "EXHOUST\nFAN"
                warningIndicator.warText: "OFF"
                anchors.topMargin: 42
                anchors.rightMargin: 23
                swich2state.offText: "NORM"
                swich2state.description: "EXHOUST\nFAN"
                onClicked:{ControlTemp.coolingSwich("exhaust")}
            }

            ModuleDescription {
                id: moduleDescription1
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                description: "EQUIPMENT COOLING"
            }
        }

        ModuleDescription {
            id: moduleDescription
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "temperature contoler"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

    }

    Connections{
        target:RenderTemp

        function onSetTrim(state){
            trimAir.swich2state.togled=state
        }
        function onSetCooling(name,state){
            if(name==="suply")
                suplyFan.togled=state
            else if(name==="exhoust")
                exhoustFan.togled=state
        }
        function onSetTempControl(name,state){
            /*
            if(name==="cont_cab_temp")
                cont.tempSlider.setVal(state)
            else if(name==="aft_cab_temp")
                aft.tempSlider.setVal(state)
            else if(name==="fwd_cab_temp")
                fwd.tempSlider.setVal(state)
            */
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:4}D{i:3}D{i:5}D{i:6}D{i:7}D{i:2}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:17}D{i:19}D{i:18}D{i:16}D{i:9}D{i:20}D{i:22}D{i:23}
D{i:24}D{i:21}D{i:25}D{i:8}D{i:26}
}
##^##*/
