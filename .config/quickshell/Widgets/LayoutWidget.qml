import QtQuick
import "../Singletons"

Rectangle {
    id: layoutblock
    property color backgroundColor: '#7c6f64'
    property color textColor: '#d4be98'
    property int margin: 5
    property int radiusPixels: 5
    required property string monitorID
    property string layoutShort: DwlService.getOutputState(monitorID)?.layout || ''

    readonly property var layoutMap: {
        "T":    " Tiling",
        "G":    "󰋁 Grid",
        "M":    " Monocle",
        "K":    "󰘹 Deck",
        "CT":   " Center Tile",
        "RT":   " Right Tile",
        "VS":   " Vertical Scroll",
        "VT":   " Vertical Tile",
        "VG":   "󰋁 Vertical Grid",
        "VK":   "󰘹 Vertical Deck",
        "TG":   "󰋁 Tiling Grid",
        "S":    " Scrolling",
        "󰃇":    "󰃇 Overview",
        "": "",
    }

    color: backgroundColor
    width: text.width + margin
    height: text.height + margin
    radius: radiusPixels
    visible: !(layoutShort === '')

    Text {
        id: text
        color: layoutblock.textColor
        text: layoutblock.layoutMap[layoutblock.layoutShort]
        font.pixelSize: 16
        font.family: 'Maple Mono NF'
        anchors.centerIn: parent
        visible: true
    }
}
