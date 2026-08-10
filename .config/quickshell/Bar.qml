import Quickshell
import QtQuick.Layouts
import "Widgets"
import "Widgets/PowerMenu"
import "Components"

Scope {
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


            TagWidget { monitorID: bar.modelData.name }
            LayoutWidget { monitorID: bar.modelData.name }
            ClockWidget {}
        }
    }
  }
}
