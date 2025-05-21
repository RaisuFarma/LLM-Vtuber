import QtQuick

Rectangle {
    id: sidebarRoot
    property bool collapsed: false
    property real expandedWidth
    default property alias content: contentItem.data
    
    width: collapsed ? 0 : expandedWidth
    color: "blue"
    
    Behavior on width {
        NumberAnimation { 
            duration: 100
            easing.type: Easing.InOutQuad 
        }
    }

    Item {
        id: contentItem
        anchors.fill: parent
        clip: true
    }
} 