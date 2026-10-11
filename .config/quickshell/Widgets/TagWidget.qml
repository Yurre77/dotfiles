import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../Services"
import "../"

Rectangle {
    id: root
    required property string monitorID

    color: 'transparent'
    width: text.width
    height: 30
    readonly property var tags: MangoService.getOutputMonitorState(monitorID)?.tags ?? []
    readonly property int activeTag: MangoService.getOutputMonitorState(monitorID)?.active_tags[0] - 1 ?? -1

    RowLayout {
        id: text
        spacing: 0
        Repeater {
            model: 9
            Button {
                id: r
                required property int index
                onClicked: MangoService.changeTag(index + 1)

                contentItem: Text {
                    id: t
                    text: r.index + 1
                    font.pixelSize: 16
                    color: r.hovered ? Colors.aqua : root.tags[r.index]?.client_count > 0 ? Colors.fg : Colors.dim
                }
                background: Rectangle {
                    height:  2
                    color: r.hovered ? Colors.aqua : root.activeTag === r.index ? Colors.blue : root.tags[r.index]?.client_count > 0 ? Colors.bg : 'transparent'
                }
            }
        }
    }
}
