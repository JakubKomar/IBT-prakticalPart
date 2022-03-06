import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"


    Connections{
        target:ControlElectrical
    }


    Connections{
        target:RenderElectrical

    }







    Rectangle {
        id: leftSide
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"
        border.width: 2


        Item {
            id: pipes
            anchors.fill: parent

            Rectangle {
                id: pipe11
                x: 158
                y: 633
                width: 560
                height: 30
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                anchors.horizontalCenterOffset: 8
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: pipe
                x: 152
                y: 196
                width: 30
                height: 643
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0

                Rectangle {
                    id: pipe1
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }


            Rectangle {
                id: pipe2
                x: 702
                y: 196
                width: 30
                height: 637
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe3
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }


            Rectangle {
                id: pipe4
                x: 423
                y: 686
                width: 30
                height: 137
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe5
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }


            Rectangle {
                id: pipe6
                x: 352
                y: 430
                width: 30
                height: 197
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe7
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }


            Rectangle {
                id: pipe8
                x: 501
                y: 425
                width: 30
                height: 197
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe9
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }


            Rectangle {
                id: pipe12
                x: 158
                y: 635
                width: 560
                height: 26
                color: "#353535"
                border.color: "#00000000"
                border.width: 0
                anchors.horizontalCenterOffset: 8
                anchors.horizontalCenter: parent.horizontalCenter
            }

            WarningIndicator {
                id: warningIndicator
                x: 97
                y: 608
                textHeight: 24
                warText: "TRANSFER\nBUS OFF"
            }

            WarningIndicator {
                id: warningIndicator1
                x: 647
                y: 608
                textHeight: 24
                warText: "TRANSFER\nBUS OFF"
            }
        }

        GuardedSwich {
            id: guardedSwich2
            y: 577
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Swich2noStateGen {
            id: swich2noStateGen
            x: 87
            y: 283
        }


        Swich2noStateGen {
            id: swich2noStateGen1
            x: 642
            y: 283
            infoIndicator.description: "GEN 2\nOFFBUS"
        }


        SwichesApuGen {
            id: swichesApuGen
            y: 283
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Swich2noStateGen {
            id: swich2noStateGen2
            y: 806
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }


        BusGraphRepr {
            id: busGraphRepr1
            x: 642
            y: 827
            width: 150
            height: 157
            busText: "BUS 2"
        }


        BusGraphRepr {
            id: busGraphRepr
            x: 87
            y: 827
            width: 150
            height: 157
        }



        Rectangle {
            id: rectangle2
            x: 38
            y: 58
            width: 248
            height: 201
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"

            WarningIndicator {
                id: warningIndicator10
                y: 154
                width: 140
                height: 43
                radius: 13
                anchors.horizontalCenter: parent.horizontalCenter
                warText: "DRIVE"
            }

            GuardedSwichAlt {
                id: guardedSwichAlt
                x: 0
                y: 29

            }

            Text {
                id: text1
                x: 0
                y: 0
                width: 248
                height: 34
                color: "#ffffff"
                text: qsTr("DISCONNECT GEN1")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
            }

        }

        Rectangle {
            id: rectangle4
            x: 593
            y: 58
            width: 248
            height: 201
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"
            WarningIndicator {
                id: warningIndicator11
                y: 154
                width: 140
                height: 43
                radius: 13
                anchors.horizontalCenter: parent.horizontalCenter
                warText: "DRIVE"
            }

            GuardedSwichAlt {
                id: guardedSwichAlt2
                x: 0
                y: 29
            }

            Text {
                id: text2
                x: 0
                y: 0
                width: 248
                height: 34
                color: "#ffffff"
                text: qsTr("DISCONNECT GEN1")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
            }
        }

        Rectangle {
            id: rectangle5
            x: 314
            y: 8
            width: 248
            height: 201
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"
            WarningIndicator {
                id: warningIndicator12
                y: 154
                width: 140
                height: 43
                radius: 13
                anchors.horizontalCenter: parent.horizontalCenter
                warText: "DRIVE"
            }

            GuardedSwichAlt {
                id: guardedSwichAlt3
                x: 0
                y: 29

            }

            Text {
                id: text3
                x: 0
                y: 0
                width: 248
                height: 34
                color: "#ffffff"
                text: qsTr("STANDBY POWER")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
            }
        }











    }

    Rectangle {
        id: rightSide
        x: parent.width/2
        y: 0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"
        border.width: 2
        Rectangle {
            id: dcPart
            x: 0
            y: 0
            width: parent.width/2
            height: parent.height
            color: "#00ffffff"
            border.color: "#ffffff"
            border.width: 2
        }
        Rectangle {
            id: acPart
            x: parent.width/2
            y: 0
            width: parent.width/2
            height: parent.height
            color: "#00ffffff"
            border.color: "#ffffff"
            border.width: 2
        }
        Swich2state {
            id: swich2state2
            x: 503
            y: 858
        }

        Swich2state {
            id: swich2state3
            x: 669
            y: 858
        }

        GuardedSwich {
            id: guardedSwich3
            x: 94
            y: 858
            width: 250
            height: 150
        }

        WarningIndicator {
            id: warningIndicator7
            x: 266
            y: 531
        }

        WarningIndicator {
            id: warningIndicator8
            x: 420
            y: 531
        }

        WarningIndicator {
            id: warningIndicator9
            x: 577
            y: 531
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}D{i:2}D{i:5}D{i:7}D{i:6}D{i:9}D{i:8}D{i:11}D{i:10}
D{i:13}D{i:12}D{i:15}D{i:14}D{i:16}D{i:17}D{i:18}D{i:4}D{i:19}D{i:20}D{i:21}D{i:22}
D{i:23}D{i:24}D{i:25}D{i:27}D{i:28}D{i:29}D{i:26}D{i:31}D{i:32}D{i:33}D{i:30}D{i:35}
D{i:36}D{i:37}D{i:34}D{i:3}D{i:39}D{i:40}D{i:41}D{i:42}D{i:43}D{i:44}D{i:45}D{i:46}
D{i:38}
}
##^##*/
