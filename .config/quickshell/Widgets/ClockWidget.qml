import QtQuick
import Quickshell
import Quickshell.Widgets

WrapperRectangle {
    id: clock
    property color backgroundColor: '#7c6f64'
    property color textColor: '#d4be98'

    color: backgroundColor
    anchors.centerIn: parent
    margin: 5
    radius: 5

    Text {
        color: clock.textColor
        text: Time.time
        font.pixelSize: 16
        font.family: 'Maple Mono NF'

        MouseArea {
            id: ma
            hoverEnabled: true
            anchors.fill: parent
        }
    }

    PopupWindow {
        id: popup
        anchor.item: clock
        anchor.rect.x: - width / 2 + clock.width / 2
        anchor.rect.y: clock.height
        height: 500
        width: 500
        visible: ma.containsMouse || popupMa.containsMouse
        color: clock.backgroundColor

        MouseArea {
            id: popupMa
            hoverEnabled: true
            anchors.fill: parent
        }
    }
}
