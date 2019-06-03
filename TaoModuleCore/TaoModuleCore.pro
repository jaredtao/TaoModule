#-------------------------------------------------
#
# Project created by QtCreator 2019-06-03T09:16:21
#
#-------------------------------------------------

QT       += core qml quick

TARGET = TaoModuleCore
TEMPLATE = lib
CONFIG += plugin

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        TaoModuleCorePlugin.cpp

HEADERS += \
        TaoModuleCorePlugin.h

RESOURCES += \
    Img.qrc \
    Qml.qrc

#目标路径指定为bin/TaoModuleCore
DESTDIR = $$PWD/../bin/TaoModuleCore

# 插件描述文件
DISTFILES = qmldir
# 编译时，描述文件也拷贝到$$PWD/../bin/TaoModuleCore下面
!equals(_PRO_FILE_PWD_, $$DESTDIR) {
    copy_qmldir.target = $$DESTDIR/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    win32 {
        copy_qmldir.target ~= s,/,\\\\,g
        copy_qmldir.depends ~= s,/,\\\\,g
    }
    copy_qmldir.commands = $${QMAKE_COPY_FILE} $${copy_qmldir.depends} $${copy_qmldir.target}
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}


