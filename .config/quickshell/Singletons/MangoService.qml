pragma Singleton

import Quickshell
import Quickshell.Io

Singleton {
    id: root
    required property string monitorID

    Process {
        id: getMonitorState
        command: ["mmsg", "get", "monitor", root.monitorID]
        running: false

        property var lineBuffer: []
    }
}
