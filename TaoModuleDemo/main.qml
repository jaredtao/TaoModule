import QtQuick 2.12
import QtQuick.Window 2.12

import TaoModuleCore 1.0
import "qrc:/TaoModuleCore/Qml/"

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello TaoModule")

    TCircle {
        anchors.centerIn: parent
    }
}
