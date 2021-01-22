import QtQuick 2.0
import QtQuick.Window 2.1
import QtQuick.Controls 2.1

Window {
    width: 1200
    height: 800
    visible: true

    Item {
        id: root
        anchors.fill: parent
        property real main_terminal_value1: terminal.value1
        property real main_terminal_value2: terminal.value1
        property real main_terminal_value3: terminal.value3

        property real main_bts_vlaue: bts.value

        Rectangle {
            anchors.fill: root
            color: "#fcedda"
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Bts {
            id: bts
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Terminal {
            id: terminal
            x: root.width * 0.5
        }


        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Infos {
            id: infos
            y: root.height * 0.65
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++

    }


}
