import QtQuick 2.0
import QtQuick.Controls 2.0

Button {
    id:menuItem
    text: qsTr("Menu Item")

    implicitWidth: 220
    implicitHeight: 80
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.leftMargin: 0

    flat: true
    highlighted: false


    property int status: 0
    property int rad: 7
    property color warningColor: "orange"
    property color errorColor: "red"
    property color defaultColor: "transparent"

    property int borderW:1
    property int borderWact:3

    property color bcColor: {
        if(status==2){
            errorColor
        }
        else if(status==1){
            warningColor
        }
        else{
            defaultColor
        }
    }
    property bool activePage: false

    property color frameColorDefault: "#5e808080"
    property color frameColorActive: Styles.green
    property color frameColor: activePage ? frameColorActive:frameColorDefault



    background: Rectangle {
          color: menuItem.bcColor
          border.width: activePage? borderWact:borderW
          radius:rad
          border.color: activePage?frameColorActive: frameColorDefault

    }
    contentItem: Item{
           id: item1
           Text{
               id:itemText
               color: "#ffffff"
               text: menuItem.text
               anchors.verticalCenter: parent.verticalCenter
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 30
               font.capitalization: Font.AllUppercase
           }
    }
}

/*##^##
Designer {
    D{i:0;height:80;width:162}
}
##^##*/
