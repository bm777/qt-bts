import QtQuick 2.0

Item {
    id: bts
    width: parent.width * 0.5
    height: parent.height * 0.65
    property real w: parent.width

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
        scale: 0.3
        x: - bts.width * 0.4
        y: - 85
    }
    Image {
        id: l_1
        source: "../img/arc-l.svg"
        scale: 0.3
        x: - bts.width * 0.57
        y: - 85
    }
    // +++++++++++++
    Image {
        id: r_2
        source: "../img/arc-r.svg"
        scale: 0.4
        x: - bts.width * 0.372
        y: - 85
    }
    Image {
        id: l_2
        source: "../img/arc-l.svg"
        scale: 0.4
        x: - bts.width * 0.6
        y: - 85
    }

    //++++++++++++++++++
    Image {
        id: r_3
        source: "../img/arc-r.svg"
        scale: 0.5
        x: - bts.width * 0.345
        y: - 85
    }
    Image {
        id: l_3
        source: "../img/arc-l.svg"
        scale: 0.5
        x: - bts.width * 0.63
        y: - 85
    }

}
