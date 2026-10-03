import QtQuick
import QtQuick.Layouts

Item {
    id: root
    property alias children: content.children
    property alias spacing: content.spacing
    
    Rectangle {

    }

    height: 30
    width: 500
    RowLayout {
        id: content
    }
}
