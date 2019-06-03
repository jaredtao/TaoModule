#include "TaoModuleCorePlugin.h"
void TaoModuleCorePlugin::registerTypes(const char *uri)
{
    Q_UNUSED(uri);
    Q_INIT_RESOURCE(Img);
    Q_INIT_RESOURCE(Qml);   //Qml 是 资源文件Qml.qrc的名字。这样注册以后，就可以引用里面的内容了
                            //这个插件被其它地方加载，其它地方也可以用Res.qrc里面的内容。
}
