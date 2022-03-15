import QtQuick
import QtQuick.Controls
import "../componets"
Rectangle {
    id: dashBoard
    width: 1750
    height: 1060
    color: "#000000"
    border.color: "#ffffff"
    
    Rectangle {
        id: rightSide
        x: parent.width/2
        width: parent.width/2
        color: "#00ffffff"
        border.color: "#ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        
        EngineData {
            id: engineData
            anchors.fill: parent
        }
    }
    
    Rectangle {
        id: leftSide
        x: 0
        width: parent.width/2
        color: "#00ffffff"
        border.color: "#ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        
        FlapsIndicator {
            id: flapsIndicator
            x: 635
            y: 743
            stateVal: 0
            setVal: 0.1
        }
        
        FuelPanelCompact {
            id: fuelPanelCompact
            x: 8
            y: 718
        }
        
        Rectangle {
            id: rectangle
            y: 673
            height: 1
            color: "#ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
        
        Rectangle {
            id: rectangle1
            x: 601
            y: 680
            width: 1
            height: 386
            color: "#ffffff"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }
        
        Rectangle {
            id: item1
            y: 0
            height: 666
            color: "#00ffffff"
            radius: 13
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            
            Item {
                id: item2
                y: 148
                width: 479
                height: 428
                anchors.horizontalCenterOffset: -5
                anchors.horizontalCenter: parent.horizontalCenter
                
                Image {
                    id: image
                    anchors.fill: parent
                    source: "../pic/plane.png"
                    rotation: 180
                    fillMode: Image.PreserveAspectFit
                }
            }
            
            BreakTemp {
                id: breakTempL
                y: 586
                anchors.left: parent.left
                orangeVal: 5
                redVal: 9.5
                anchors.leftMargin: 82
                leftBreakTemp: 6.1
                
                Text {
                    id: text1
                    y: -24
                    width: 123
                    height: 24
                    color: "#00b2ff"
                    text: qsTr("BREAK TEMP L")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
            
            BreakTemp {
                id: breakTempR
                x: 591
                y: 586
                anchors.right: parent.right
                orangeVal: 5
                redVal: 9.5
                anchors.rightMargin: 101
                leftBreakTemp: 6.1
                
                Text {
                    id: text2
                    y: -24
                    width: 113
                    height: 24
                    color: "#00b2ff"
                    text: qsTr("BREAK TEMP R")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            SurfaceIndicatorHorizontal {
                id: splrL
                y: 246
                width: 83
                height: 180
                description: "FLT SPLR"
                minVal: 0
                anchors.horizontalCenterOffset: -160
                anchors.horizontalCenter: parent.horizontalCenter
                indicateMidle: false
                digiValOnLeft: false
                val: 1
            }

            SurfaceIndicatorHorizontal {
                id: aliL
                y: 246
                height: 180
                description: "AIL"
                anchors.horizontalCenterOffset: -245
                anchors.horizontalCenter: parent.horizontalCenter
                digiValOnLeft: false
                val: 1
            }

            SurfaceIndicatorHorizontal {
                id: splrR
                y: 246
                height: 180
                description: "FLT SPLR"
                minVal: 0
                anchors.horizontalCenterOffset: 160
                anchors.horizontalCenter: parent.horizontalCenter
                indicateMidle: false
                digiValOnLeft: true
                val: 1
            }

            SurfaceIndicatorHorizontal {
                id: aliR
                y: 246
                height: 180
                description: "AIL"
                anchors.horizontalCenterOffset: 245
                anchors.horizontalCenter: parent.horizontalCenter
                digiValOnLeft: true
                val: -1
            }

            SurfaceIndicatorHorizontal {
                id: elev
                x: 424
                y: 403
                width: 89
                height: 180
                description: "ELEV"
                val: -1
                digiValOnLeft: true
            }

            SurfaceIndicatorVertical {
                id: rudder
                y: 589
                width: 180
                height: 84
                description: "RUDDER"
                val: 0.25
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        
        ModuleDescription {
            id: moduleDescription1
            x: 601
            y: 676
            width: 274
            height: 39
            description: "FLAPS STATUS"
        }
        
        ModuleDescription {
            id: moduleDescription
            x: 0
            y: 676
            width: 601
            height: 39
            description: "FUEL STATUS"
        }
        
        ModuleDescription {
            id: moduleDescription2
            height: 39
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            description: "HYDRAULIC STATUS"
            
            Rectangle {
                id: rectangle2
                y: 36
                width: 227
                height: 106
                color: "#00ffffff"
                radius: 13
                border.color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                
                Text {
                    id: text4
                    y: 27
                    color: "#00b2ff"
                    text: qsTr("QTY %")
                    font.pixelSize: 20
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Text {
                    id: text5
                    y: 65
                    color: "#00b2ff"
                    text: qsTr("PRESS")
                    font.pixelSize: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -1
                }
                
                Text {
                    id: text6
                    y: 0
                    color: "#00b2ff"
                    text: qsTr("A")
                    font.pixelSize: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -70
                }
                
                Text {
                    id: text7
                    y: 0
                    width: 12
                    height: 27
                    color: "#00b2ff"
                    text: qsTr("B")
                    font.pixelSize: 20
                    anchors.horizontalCenterOffset: 70
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Text {
                    id: qtyB
                    x: 148
                    y: 27
                    width: 79
                    height: 27
                    color: "#ffffff"
                    text: qsTr("87")
                    anchors.right: parent.right
                    font.pixelSize: 28
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 0
                }
                
                Text {
                    id: qtyA
                    y: 27
                    width: 85
                    height: 27
                    color: "#ffffff"
                    text: qsTr("87")
                    anchors.left: parent.left
                    font.pixelSize: 28
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 0
                }
                
                Text {
                    id: pressB
                    x: 148
                    y: 65
                    width: 79
                    height: 27
                    color: "#ffffff"
                    text: qsTr("2920")
                    anchors.right: parent.right
                    font.pixelSize: 28
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 0
                }
                
                Text {
                    id: pressA
                    y: 65
                    width: 85
                    height: 27
                    color: "#ffffff"
                    text: qsTr("2940")
                    anchors.left: parent.left
                    font.pixelSize: 28
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 0
                }
            }
        }
        
    }
    Connections{
        target: DashBoardRender
        function onSetAnnunciator(name, val){
            switch(name){
            case"transit":{
                flapsIndicator.warningIndicator.status=val
                break
            }
            case"extend":{
                flapsIndicator.stateIndicator.status=val
                break
            }
            default:{}
            }
        }
        function onSetFlapIndicator(name, val){
            switch(name){
            case"actState":{
                flapsIndicator.stateVal=val
                break
            }
            case"setState":{
                flapsIndicator.setVal=val
                break
            }
            default:{}
            }
        }
        function onSetIndicators(name, val){
            switch(name){
                case"breakLInTemp":{
                    breakTempL.rightBreakTemp=val
                    break
                }
                case"breakLOutTemp":{
                    breakTempL.leftBreakTemp=val
                    break
                }
                case"breakRInTemp":{
                    breakTempR.leftBreakTemp=val
                    break
                }
                case"breakROutTemp":{
                    breakTempR.rightBreakTemp=val
                    break
                }
                case"aPress":{
                    pressA.text=val.toFixed(0)
                    break
                }
                case"bPress":{
                    pressB.text=val.toFixed(0)
                    break
                }
                case"aQty":{
                    qtyA.text=val.toFixed(0)
                    break
                }
                case"bQty":{
                    qtyB.text=val.toFixed(0)
                    break
                }
                case"elev":{
                    elev.val=val
                    break
                }
                case"ruder":{
                    rudder.val=val
                    break
                }
                case"lSplr":{
                    splrL.val=val
                    break
                }
                case"rSplr":{
                    splrR.val=val
                    break
                }
                case"aliL":{
                    aliL.val=val
                    break
                }
                case"aliR":{
                    aliR.val=val
                    break
                }
                default:{}
            }
        }
        
        
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:2}D{i:1}D{i:4}D{i:5}D{i:6}D{i:7}D{i:10}D{i:9}D{i:12}
D{i:11}D{i:14}D{i:13}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:8}D{i:21}D{i:22}
D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}D{i:32}D{i:24}D{i:23}D{i:3}D{i:33}
}
##^##*/
