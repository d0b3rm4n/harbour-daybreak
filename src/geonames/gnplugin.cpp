/***************************************************************************

    Copyright 2012 Reto Zingg <g.d0b3rm4n@gmail.com>

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include <QtQml>
#include <QQmlExtensionPlugin>

class GnPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface" FILE "qmlplugin.json")
public:
    void registerTypes(const char *uri);
};

void GnPlugin::registerTypes(const char *uri)
{
    Q_ASSERT(uri == QLatin1String("harbour.querymee.GeoNames"));
    // qmlRegisterType<QueryMee>(uri, 1, 0, "QueryMee");
}

