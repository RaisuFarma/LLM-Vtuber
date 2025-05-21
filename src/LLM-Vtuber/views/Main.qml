import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
    id: mainWindow
    visibility: Window.Maximized
    width: 640
    height: 480
    title: "LLM-Vtuber"

    Material.theme: Material.Dark

    property bool leftSidebarVisible: true
    property real leftSidebarWidth: width / 6
    property bool rightSidebarVisible: true
    property real rightSidebarWidth: width / 6

    Item {
        anchors.fill: parent
        clip: true

        // LeftBar
        Sidebar {
            id: leftBar
            height: parent.height
            collapsed: !mainWindow.leftSidebarVisible
            expandedWidth: mainWindow.leftSidebarWidth

            Text { 
                text: "Left Sidebar Content"
                anchors.centerIn: parent
                color: "white"
            }
        }

        // MainArea
        MainArea {
            id: mainArea
            anchors.left: leftBar.right
            anchors.right: rightBar.left
            height: parent.height
        }

        // RightBar
        Sidebar {
            id: rightBar
            anchors.right: parent.right
            height: parent.height
            collapsed: !mainWindow.rightSidebarVisible
            expandedWidth: mainWindow.rightSidebarWidth

            Text { 
                text: "Right Sidebar Content"
                anchors.centerIn: parent
                color: "white"
            }
        }
    }
}
