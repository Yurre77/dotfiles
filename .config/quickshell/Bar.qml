import Quickshell
import "Widgets"
import "Widgets/PowerMenu"

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
        id: bar
        required property var modelData
        screen: modelData

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 30
        color: "transparent"
        ClockWidget {}
    }
  }
}
