import QtQuick
import QtQuick.Layouts
import "../Singletons"

Rectangle {
    id: root
    required property string monitorID

    color: '#7c6f64'
    width: text.width
    height: 30
    property var tags: DwlService.getActiveTags(monitorID)
    function temp() {
        console.log(DwlService.getActiveTags(monitorID))
    }

    Component.onCompleted: temp()

    RowLayout {
        id: text
        spacing: 0
        Repeater {
            model: 9
            Rectangle {
                id: r
                required property int index
                height: 2
                width: t.width
                Text {
                    id: t
                    text: r.index + 1
                    font.pixelSize: 16
                }
            }
        }
    }
}
