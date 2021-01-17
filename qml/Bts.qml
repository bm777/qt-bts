import QtQuick 2.6
import QtQuick.Controls 2.1

Item {
    id: bts
    width: parent.width * 0.5
    height: parent.height * 0.65
    property bool on: c_bts.checked


    Image {
        id: img_bts
        source: "../img/bts.svg"
        scale: 0.5
        x: - bts.width * 0.5
        y: 0
    }

    // +++++++++++++++++++++++++++++++++++++++++++++++
    Image {
        id: r_1
        source: "../img/arc-r.svg"
        visible: false
        scale: 0.3
        x: - bts.width * 0.4
        y: - 85
    }
    Image {
        id: l_1
        source: "../img/arc-l.svg"
        scale: 0.3
        visible: false
        x: - bts.width * 0.57
        y: - 85
    }
    // +++++++++++++
    Image {
        id: r_2
        visible: false
        source: "../img/arc-r.svg"
        scale: 0.4
        x: - bts.width * 0.372
        y: - 85
    }
    Image {
        id: l_2
        visible: false
        source: "../img/arc-l.svg"
        scale: 0.4
        x: - bts.width * 0.6
        y: - 85
    }

    //++++++++++++++++++
    Image {
        id: r_3
        visible: false
        source: "../img/arc-r.svg"
        scale: 0.5
        x: - bts.width * 0.345
        y: - 85
    }
    Image {
        id: l_3
        visible: false
        source: "../img/arc-l.svg"
        scale: 0.5
        x: - bts.width * 0.63
        y: - 85
    }
    // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Switch {
        id: c_bts
        text: "On"
        y: bts.height * 0.67
        x: bts.width * 0.4

        indicator: Rectangle {
            implicitHeight: 26
            implicitWidth: 48
            x: c_bts.leftPadding
            y: parent.height / 2 - height / 2
            radius: 13
            color: c_bts.checked ? "#17a81a" : "white"
            border.color: c_bts.checked ? "#17a81a" : "#cccccc"

            Rectangle {
                x: c_bts.checked ? parent.width - width : 0
                width: 26
                height: 26
                radius: 13
                color: c_bts.down ? "#cccccc" : "#ffffff"
                border.color: c_bts.checked ? (c_bts.down ? "17a81a" : "#21be2b") : "#999999"
            }
        }

        contentItem: Text {
            text: c_bts.text
            font: c_bts.font
            opacity: enabled ? 1.0 : 0.3
            color: c_bts.down ? "#17a81a" : "#21be2b"
            verticalAlignment: Text.AlignVCenter
            leftPadding: c_bts.indicator.width + c_bts.spacing
        }
    }














   SequentialAnimation {
       running: c_bts.checked
       loops: Animation.Infinite
       // +++++++++++++++++
       ParallelAnimation {
           running: true

           PropertyAnimation {
               target: r_1
               property: "visible"
               to: true
               duration: 500
           }
           PropertyAnimation {
               target: r_2
               property: "visible"
               to: true
               duration: 600
           }
           PropertyAnimation {
               target: r_3
               property: "visible"
               to: true
               duration: 700
           }
           // ---------------------------------
           PropertyAnimation {
               target: l_1
               property: "visible"
               to: true
               duration: 500
           }
           PropertyAnimation {
               target: l_2
               property: "visible"
               to: true
               duration: 600
           }
           PropertyAnimation {
               target: l_3
               property: "visible"
               to: true
               duration: 700
           }
       }
       // +++++++++++++++reverse
       ParallelAnimation {
           running: true

           PropertyAnimation {
               target: r_1
               property: "visible"
               to: false
               duration: 200
           }
           PropertyAnimation {
               target: r_2
               property: "visible"
               to: false
               duration: 300
           }
           PropertyAnimation {
               target: r_3
               property: "visible"
               to: false
               duration: 300
           }
           // ---------------------------------

           PropertyAnimation {
               target: l_1
               property: "visible"
               to: false
               duration: 200
           }
           PropertyAnimation {
               target: l_2
               property: "visible"
               to: false
               duration: 300
           }
           PropertyAnimation {
               target: l_3
               property: "visible"
               to: false
               duration: 300
           }
       }
   }

}
