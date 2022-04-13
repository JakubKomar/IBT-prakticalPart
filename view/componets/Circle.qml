/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:04:13
  * @ Description: displayed circle
 */

import QtQuick 2.0

Item {
    width: 50
    height: 50
    property alias rectangle: rectangle

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        radius:parent.width/2

    }

}
