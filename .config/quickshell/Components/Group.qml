import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Pane {
    id: root

    property alias cs: layout.spacing
    property alias bg: bg.color
    padding: 0

    background: Rectangle {
        id: bg
    }

    contentItem: RowLayout {
        id: layout
    }
}
