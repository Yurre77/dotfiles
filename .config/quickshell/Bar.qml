import Quickshell
import QtQuick.Layouts
import "Widgets"
import "Components"

Scope {
    id: root
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: bar
            required property var modelData
            screen: modelData
            implicitHeight: 30
            color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            RowLayout {
                anchors.fill: parent

                Group {
                    TagWidget { monitorID: bar.modelData.name }
                    LayoutWidget { monitorID: bar.modelData.name }
                }
                ClockWidget {}
            }
        }
    }
}
