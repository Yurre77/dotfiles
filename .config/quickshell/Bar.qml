import Quickshell
import QtQuick
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
            color: Colors.bg

            anchors {
                top: true
                left: true
                right: true
            }

            RowLayout {
                anchors.fill: parent

                ClockWidget {}
                Group {
                    id: tagInfo
                    bg: "transparent"
                    TagWidget { monitorID: bar.modelData.name }
                    LayoutWidget { monitorID: bar.modelData.name }
                }

                Item { Layout.fillWidth: true }

            }
        }
    }
}
