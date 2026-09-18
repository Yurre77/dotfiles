import QtQuick
import Quickshell
import Quickshell.Io
import "../Singletons"

Rectangle {
    id: layoutblock

    property color backgroundColor: '#7c6f64'
    property color textColor: '#d4be98'
    property int margin: 5
    property int radiusPixels: 5

    required property string monitorID
    readonly property var monitorOutput: MangoService.getOutputMonitorState(monitorID)
    readonly property string layoutShort: monitorOutput?.layout_symbol ?? ''
    readonly property bool isOverview: monitorOutput?.active_tags[0] === 0

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
        "DW":   " Dwindle",
        "F":    "󰋁 Fair",
        "VF":   "󰋁 Vertical Fair",
        "OV":   "󰃇 Overview",
        "":     "",
    }

    color: backgroundColor
    width: text.width + margin
    height: text.height + margin
    radius: radiusPixels
    visible: !(layoutShort === '')

    Text {
        id: text
        color: layoutblock.textColor
        font.pixelSize: 16
        font.family: 'Maple Mono NF'
        anchors.centerIn: parent
        text: layoutMap[isOverview ? "OV" : layoutShort]
        visible: true
    }
}
