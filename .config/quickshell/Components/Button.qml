import QtQuick
import Quickshell

Rectangle {
    id: button
    property color backgroundColor: '#7c6f64'
    property color backgroundHoverColor: '#3c3836'
    property color textColor: '#d4be98'
    property int margin: 5
    property int cornerRadius: 5

    color: ma.containsMouse ? backgroundHoverColor : backgroundColor
    width: text.width + margin 
    height: text.height + margin 
    radius: cornerRadius

    Text {
        id: text
        color: ma.containsMouse ? button.backgroundColor : button.textColor
        text: 'Button'
        anchors.centerIn: parent
        font.pixelSize: 16
    }

    MouseArea {
        id: ma
        hoverEnabled: true
        anchors.fill: parent
    }
}
