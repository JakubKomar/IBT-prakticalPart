import QtQuick

Rectangle{
    width: 658
    height: 1
    property color grad1: "transparent"
    property color grad2: Styles.blueDark
    property color grad3: "transparent"
    property bool vert:false
    gradient: Gradient {
        GradientStop {
            position: 0
            color: grad1
        }
        GradientStop {
            position: 0.5
            color: grad2
        }
        GradientStop {
            position: 1
            color: grad3
        }
        orientation: vert? Gradient.Vertical:Gradient.Horizontal
    }
}

/*##^##
Designer {
    D{i:0;height:1;width:875}
}
##^##*/
