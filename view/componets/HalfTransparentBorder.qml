import QtQuick

Rectangle{
    width: 658
    height: 1
    color: "#00000000"
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "transparent"
        }
        GradientStop {
            position: 0.5
            color: Styles.blueDark
        }
        GradientStop {
            position: 1
            color: "transparent"
        }
        orientation: Gradient.Horizontal
    }
}

/*##^##
Designer {
    D{i:0;height:2;width:875}
}
##^##*/
