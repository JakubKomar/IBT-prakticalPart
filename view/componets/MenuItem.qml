/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:04:41
  * @ Description: menu item - clickable
 */

import QtQuick 
import QtQuick.Controls 

Button {
    id:menuItem
    text: qsTr("Menu Item")

    implicitWidth: 220
    implicitHeight: 80
    anchors.left: parent.left
    anchors.right: parent.right
    clip: true
    anchors.rightMargin: 0
    anchors.leftMargin: 0

    flat: true
    highlighted: false


    property int status: 0
    property bool fire:false
    property bool warn:false
    property int rad: 7
    property color warningColor: "orange"
    property color errorColor: "red"
    property color defaultColor: "transparent"

    property int borderW:1
    property int borderWact:3

    property color bcColor: {
        if(fire){
            errorColor
        }
        else if(warn){
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
          border.color: activePage?"transparent": frameColorDefault

    }
    contentItem: Item{
           id: item1
           TextCust{
               id:itemText
               color: "#ffffff"
               text: menuItem.text
               anchors.left: parent.left
               anchors.right: parent.right
               anchors.top: parent.top
               anchors.bottom: parent.bottom
               level:2
               horizontalAlignment: Text.AlignLeft
               verticalAlignment: Text.AlignVCenter
               anchors.topMargin: 0
               anchors.bottomMargin: 0
               anchors.leftMargin: 8
               anchors.rightMargin: 0
               font.capitalization: Font.AllUppercase
           }
    }

    HalfTransparentBorder {
        id: halfTransparentBorder
        visible:activePage
        y: 0
        height: 3
        anchors.left: parent.left
        anchors.right: parent.right
        grad2: "#7d00ff00"
        grad1: Styles.green
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

    HalfTransparentBorder {
        id: halfTransparentBorder1
        visible:activePage
        y: 77
        height: 3
        anchors.left: parent.left
        anchors.right: parent.right
        grad2: "#7d00ff00"
        grad1: Styles.green
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

    Rectangle {
        id: rectangle
        visible: activePage
        width: 3
        color: Styles.green
        border.color: "#00000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 6
    }
}

/*##^##
Designer {
    D{i:0;height:80;width:162}D{i:4}D{i:5}D{i:6}
}
##^##*/
