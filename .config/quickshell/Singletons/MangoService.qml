pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root

    property var output: ({})

    Process {
        id: monitorStateProcess
        command: ["mmsg", "get", "all-monitors"]
        running: true

        property var lineBuffer: {}

        stdout: StdioCollector {
            onStreamFinished: root.output = JSON.parse(this.text)
        }

        onExited: exitCode => {
            if (exitCode === 0 && monitorStateProcess.lineBuffer === {}) {
                root.output = monitorStateProcess.lineBuffer
            }
            monitorStateProcess.lineBuffer = {}
        }
    }

    function getOutputMonitorState(monitorId: string): var {
        refreshTimer.restart()
        let temp = output.monitors?.find(monitor => monitor.name === monitorId) || null
        return temp
    }

    Timer {
        id: refreshTimer
        interval: 100
        running: true
        repeat: true
        onTriggered: monitorStateProcess.running = true
    }
}
