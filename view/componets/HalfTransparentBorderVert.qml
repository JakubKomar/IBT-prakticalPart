import QtQuick
Rectangle {
    width: 1
    height: 519
    border.color: "transparent"
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
        orientation: Gradient.Vertical
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}
}
##^##*/
