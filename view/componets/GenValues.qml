import QtQuick 2.0

Item {
    width: 100
    height: 129
    property double amps:66.6
    property bool ampsEneb:true
    property double volts:666
    property bool voltsEneb:true
    property double freq:666
    property bool freqEneb:true
    property alias text:moduleDescription.description
    property bool isGenerator:false
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 10
        border.color: "gray"
        anchors.fill: parent

        Column {
            id: column
            x: 0
            y: 20
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            ModuleDescription {
                id: moduleDescription
                anchors.left: parent.left
                anchors.right: parent.right
                textSpacing: -2.7
                description: "GEN1"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }




            Item {
                id: item1
                height: 32
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                visible:ampsEneb

                TextCust {
                    id: ampsVal
                    width: 101
                    height: 31
                    color: "#ffffff"
                    text: amps.toFixed(1)
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignRight
                    anchors.leftMargin: 0
                    level: 2
                }

                TextCust {
                    id: ampsUnits
                    x: 102
                    text: " A"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: ampsVal.right
                    anchors.right: parent.right
                    horizontalAlignment: Text.AlignLeft
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    level: 2
                    color:Styles.blueDark
                }
            }


            Item {
                id: item2
                height: 32
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                visible:voltsEneb
                TextCust {
                    id: voltsVal
                    width: 101
                    color: "#ffffff"
                    text: volts.toFixed(0)
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignRight
                    anchors.leftMargin: 0
                    level: 2
                }

                TextCust {
                    id: votsUnits
                    x: 97
                    color: Styles.blueDark
                    text: " V"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: voltsVal.right
                    anchors.right: parent.right
                    font.letterSpacing: -1.8
                    horizontalAlignment: Text.AlignLeft
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    level: 2
                }
            }

            Item {
                id: item3
                height: 32
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                visible:freqEneb
                TextCust {
                    id: freqVal
                    x: 53
                    width: 101
                    color: "#ffffff"
                    text: freq.toFixed(0)
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignRight
                    anchors.leftMargin: 0
                    level: 2
                }

                TextCust {
                    id: freqUnits
                    x: 98
                    color: Styles.blueDark
                    text: " HZ"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: freqVal.right
                    anchors.right: parent.right
                    font.letterSpacing: -1.8
                    horizontalAlignment: Text.AlignLeft
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    level: 2
                }
            }


        }

        Image {
            visible:isGenerator
            id: image
            x: 1
            y: 2
            width: 22
            height: 26
            source: "../pic/elSymbol.png"
            fillMode: Image.PreserveAspectFit
        }
    }

}

/*##^##
Designer {
    D{i:0;height:129;width:150}D{i:3}D{i:5}D{i:6}D{i:4}D{i:8}D{i:9}D{i:7}D{i:11}D{i:12}
D{i:10}D{i:2}D{i:13}D{i:1}
}
##^##*/
