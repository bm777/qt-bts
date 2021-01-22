import QtQuick 2.6
import QtQuick.Controls 2.1

Item {
    id: terminal
    width: parent.width * 0.5
    height: parent.height * 1
    property real value1: ct1.checked ? 1 : 0
    property real value2: ct32.checked ? 32 : 0
    property real value3: ctr.checked ? 1 : 0


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

            Rectangle {
                id: t1
                width: 50
                height: 80
                border.color: "gray"
                color: ct1.checked ? "gray" : "white"
                x: 50
                anchors.verticalCenter: parent.verticalCenter

                Text {
                    text: "T"
                    font.pointSize: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 15
                    y: parent.height - height - 2
                    height: 15
                    radius: height / 2
                    border.color: "green"
                    color: "gray"
                }
            }
            Rectangle {
                width: 35
                height: 35
                y: -height/2
                x: parent.width + 0.5
                color: "transparent"
                border.color: "#ee4e34"
                Text {
                    text: "1"
                    anchors.centerIn: parent
                }
            }
        }


        // ++++++++++++++++++++++++++++++++++++++++++++
        Switch {
            id: ct1
            text: "On"
            anchors.verticalCenter: parent.verticalCenter
            x: 100
            indicator: Rectangle {
                implicitHeight: 26
                implicitWidth: 48
                x: ct1.leftPadding
                y: parent.height / 2 - height / 2
                radius: 13
                color: ct1.checked ? "#17a81a" : "white"
                border.color: ct1.checked ? "#17a81a" : "#cccccc"

                Rectangle {
                    x: ct1.checked ? parent.width - width : 0
                    width: 26
                    height: 26
                    radius: 13
                    color: ct1.down ? "#cccccc" : "#ffffff"
                    border.color: ct1.checked ? (ct1.down ? "17a81a" : "#21be2b") : "#999999"
                }
            }

            contentItem: Text {
                text: ct1.text
                font: ct1.font
                opacity: enabled ? 1.0 : 0.3
                color: ct1.down ? "#17a81a" : "#21be2b"
                verticalAlignment: Text.AlignVCenter
                leftPadding: ct1.indicator.width + ct1.spacing
            }
        }
         // ++++++++++++++++++++++++++++++++++++++++++++
    }
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Item {
        id: second
        width: 200
        height: 150
        anchors.horizontalCenter: parent.horizontalCenter
        y: first.height + 50

        Rectangle {
            anchors.fill: parent
            border.color: "#ee4e34"
            color: "transparent"

            Rectangle {
                id: t32
                width: 50
                height: 80
                border.color: "gray"
                color: ct32.checked ? "gray" : "white"
                x: 50
                anchors.verticalCenter: parent.verticalCenter

                Text {
                    text: "T"
                    font.pointSize: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 15
                    y: parent.height - height - 2
                    height: 15
                    radius: height / 2
                    border.color: "green"
                    color: "gray"
                }
            }
            Rectangle {
                width: 35
                height: 35
                y: -height/2
                x: parent.width + 0.5
                color: "transparent"
                border.color: "#ee4e34"
                Text {
                    text: "32"
                    anchors.centerIn: parent
                }
            }
        }


        // ++++++++++++++++++++++++++++++++++++++++++++
        Switch {
            id: ct32
            text: "On"
            anchors.verticalCenter: parent.verticalCenter
            x: 100
            indicator: Rectangle {
                implicitHeight: 26
                implicitWidth: 48
                x: ct32.leftPadding
                y: parent.height / 2 - height / 2
                radius: 13
                color: ct32.checked ? "#17a81a" : "white"
                border.color: ct32.checked ? "#17a81a" : "#cccccc"

                Rectangle {
                    x: ct32.checked ? parent.width - width : 0
                    width: 26
                    height: 26
                    radius: 13
                    color: ct32.down ? "#cccccc" : "#ffffff"
                    border.color: ct32.checked ? (ct32.down ? "17a81a" : "#21be2b") : "#999999"
                }
            }

            contentItem: Text {
                text: ct32.text
                font: ct32.font
                opacity: enabled ? 1.0 : 0.3
                color: ct32.down ? "#17a81a" : "#21be2b"
                verticalAlignment: Text.AlignVCenter
                leftPadding: ct32.indicator.width + ct32.spacing
            }
        }
         // ++++++++++++++++++++++++++++++++++++++++++++
    }
    // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Item {
        id: third
        width: 200
        height: 150
        anchors.horizontalCenter: parent.horizontalCenter
        y: second.y+ second.height + 30

        Rectangle {
            anchors.fill: parent
            border.color: "#ee4e34"
            color: "transparent"

            Rectangle {
                id: tr
                width: 50
                height: 80
                border.color: "gray"
                color: ctr.checked ? "gray" : "white"
                x: 50
                anchors.verticalCenter: parent.verticalCenter

                Text {
                    text: "T"
                    font.pointSize: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 15
                    y: parent.height - height - 2
                    height: 15
                    radius: height / 2
                    border.color: "green"
                    color: "gray"
                }
            }
            Rectangle {
                width: 35
                height: 35
                y: -height/2
                x: parent.width + 0.5
                color: "transparent"
                border.color: "#ee4e34"
                Text {
                    text: "1/1"
                    anchors.centerIn: parent
                }
            }
        }


        // ++++++++++++++++++++++++++++++++++++++++++++
        Switch {
            id: ctr
            text: "On"
            anchors.verticalCenter: parent.verticalCenter
            x: 100
            indicator: Rectangle {
                implicitHeight: 26
                implicitWidth: 48
                x: ctr.leftPadding
                y: parent.height / 2 - height / 2
                radius: 13
                color: ctr.checked ? "#17a81a" : "white"
                border.color: ctr.checked ? "#17a81a" : "#cccccc"

                Rectangle {
                    x: ctr.checked ? parent.width - width : 0
                    width: 26
                    height: 26
                    radius: 13
                    color: ctr.down ? "#cccccc" : "#ffffff"
                    border.color: ctr.checked ? (ctr.down ? "17a81a" : "#21be2b") : "#999999"
                }
            }

            contentItem: Text {
                text: ctr.text
                font: ctr.font
                opacity: enabled ? 1.0 : 0.3
                color: ctr.down ? "#17a81a" : "#21be2b"
                verticalAlignment: Text.AlignVCenter
                leftPadding: ctr.indicator.width + ctr.spacing
            }
        }
         // ++++++++++++++++++++++++++++++++++++++++++++
    }
}
