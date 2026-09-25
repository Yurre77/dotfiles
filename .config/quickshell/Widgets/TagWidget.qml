import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../Singletons"

Rectangle {
    id: root
    required property string monitorID

    color: 'transparent'
    width: text.width
    height: 30
    readonly property var tags: MangoService.getOutputMonitorState(monitorID)?.tags

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
                    color: r.hovered ? '#7daea3' : tags[r.index].client_count > 0 ? '#d4be98' : '#7c6f64'
                }
                background: Rectangle {
                    height:  2
                    color: '#7c6f64'
                }
            }
        }
    }
}
