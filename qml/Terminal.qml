import QtQuick 2.0

Item {
    id: terminal
    width: parent.width * 0.5
    height: parent.height * 1

    Item {
        id: first
        width: 200
        height: 150
        anchors.horizontalCenter: parent.horizontalCenter
        y: 20

        Rectangle {
            anchors.fill: parent
            border.color: "#ee4e34"
            color: "transparent"
        }
    }
}
