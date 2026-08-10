import QtQuick
import Quickshell

Rectangle {
    id: clock
    property color backgroundColor: '#7c6f64'
    property color textColor: '#d4be98'
    property int margin: 5
    property int radiusPixels: 5

    color: backgroundColor
    width: text.width + margin
    height: text.height + margin
    radius: radiusPixels

    Text {
        id: text
        color: clock.textColor
        text: Time.time
        font.pixelSize: 16
        font.family: 'Maple Mono NF'
        anchors.centerIn: parent
    }
}
