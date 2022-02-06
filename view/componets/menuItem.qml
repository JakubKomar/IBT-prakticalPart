import QtQuick
import QtQuick.Controls

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

    property color warningColor: "#ffff00"
    property color errorColor: "#ff0000"
    property color defaultColor: "#080808"

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

    property color frameColorDefault: "#ffff00"
    property color frameColorActive: "#ff0000"
    property color frameColor: activePage ? frameColorActive:frameColorDefault



    background: Rectangle {
          color: menuItem.bcColor

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
           }
    }

       Frame {
           id: frame
           anchors.fill: parent
       }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}D{i:4}
}
##^##*/
