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
        Rectangle {
            anchors.fill: root
            color: "#fcedda"
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Bts {

        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Terminal {
            x: root.width * 0.5
        }


        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Infos {
            y: root.height * 0.65
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++

    }


}
