import QtQuick 2.0

Rectangle {
    width: 500
    height: width
    radius: width / 2
    color: "red"
    Image {
        anchors.centerIn: parent
        source: "qrc:/TaoModuleCore/Img/s.jpg"
    }
}
