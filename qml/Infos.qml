import QtQuick 2.0

Item {
    id: infos
    width: parent.width * 0.5
    height: parent.height * 0.35
    property real tv1: terminal.value1
    property real tv2: terminal.value2
    property real tv3: terminal.value3


    property real bv: bts.value

    Rectangle {
        anchors.fill: infos
        color: "#ee4e34"
        border.color: "#ee4e34"
    }
    Text {
        y: 10
        text: "General information of BTS"
        font.pointSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#fcedda"
    }
    Rectangle {
        y: 80
        x: 100
        width: 300
        height: 32


        Item {
            width: 200
            height: 32
            Rectangle {

                anchors.fill: parent
                color: "#fcedda"
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Unused range TVWS"
                color: "#ee4e34"
            }
        }

        Item {
            id: tmp
            x: 200
            width: 100
            height: 32

            Text {
                id: value_unused
                text: set_unused()
                font.bold: true
                font.pointSize: 15
                color: "#ee4e34"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
    //++++++++++++++++++++++++++++++++++++++++
    Rectangle {
        y: 120
        x: 100
        width: 300
        height: 32


        Item {
            width: 200
            height: 32
            Rectangle {

                anchors.fill: parent
                color: "#fcedda"
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Used range TVWS"
                color: "#ee4e34"
            }
        }

        Item {
            x: 200
            width: 100
            height: 32

            Text {
                id: value_used
                text: set_used()
                font.bold: true
                font.pointSize: 15
                color: "#ee4e34"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    // ++++++++++++++++++++++++++

    Rectangle {
        y: 190
        x: 100
        width: 300
        height: 32


        Item {
            width: 200
            height: 32
            Rectangle {

                anchors.fill: parent
                color: "#fcedda"
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Total range TVWS"
                color: "#ee4e34"
            }
        }

        Item {
            x: 200
            width: 100
            height: 32

            Text {
                id: value_total
                text: "33"
                font.bold: true
                font.pointSize: 15
                color: "#ee4e34"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }


    // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    function set_unused() {
        if(bv == 1) {
            if(tv1 == 1){
                if(tv2==32){
                    if(tv3==1){
                        return 31
                    }else{
                        return 0
                    }
                }else{
                    if(tv3==1){
                        return 31
                    }else{
                        return 32
                    }
                }
            }else{
                if(tv2==32){
                    if(tv3==1){
                        return 0
                    }else{
                        return 1
                    }
                }else{
                    if(tv3==1){
                        return 32
                    }else{
                        return 33
                    }
                }
            }
        }else{
            return 33
        }

    }

    function set_used() {
        if(bv == 1) {
            if(tv1 == 1){
                if(tv2==32){
                    if(tv3==1){
                        return 2
                    }else{
                        return 33
                    }
                }else{
                    if(tv3==1){
                        return 2
                    }else{
                        return 1
                    }
                }
            }else{
                if(tv2==32){
                    if(tv3==1){
                        return 33
                    }else{
                        return 32
                    }
                }else{
                    if(tv3==1){
                        return 1
                    }else{
                        return 0
                    }
                }
            }
        }else{
            return 0
        }
    }
}
