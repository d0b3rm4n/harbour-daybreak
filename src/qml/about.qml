/***************************************************************************

    about.qml - Daybreak, A Sun and Moon rise and set calculator
    Copyright 2015 Reto Zingg <g.d0b3rm4n@gmail.com>

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the Free Software           *
 *   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,            *
 *   MA 02110-1301, USA.                                                   *
 *                                                                         *
 ***************************************************************************/

import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    allowedOrientations: defaultAllowedOrientations

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        Column {
            id: column
            width: parent.width
            spacing: Theme.paddingSmall

            PageHeader { title: "About" }

            PullDownMenu {
                MenuItem {
                    text: "View Sidudict license"
                    onClicked: {
                        pageStack.push(Qt.resolvedUrl("LicensePage.qml"))
                    }
                }
            }
            Label {
                wrapMode: Text.WordWrap
                anchors {left: parent.left; right: parent.right}
                anchors.margins: Theme.paddingMedium
                textFormat: Text.StyledText
                linkColor: Theme.highlightColor
                onLinkActivated: {
//                    console.log("clicked: " + link);
                    Qt.openUrlExternally(link);
                }

                function getText() {
                    var msg = "<b>Daybreak,</b> A Sun and Moon rise and set calculator."
                    + "<br>Copyright © 2015 Reto Zingg "
                    + "&lt;g.d0b3rm4n@gmail.com&gt;"
                    + "<br>"
                    + "<br>Daybreak is open source software licensed under the terms of the GNU General Public License."
                    + "<br>"
                    + "<br>You can find the Daybreak source here (pull requests are very welcome!):"
                    + "<br><a href='https://github.com/d0b3rm4n/harbour-daybreak'>"
                    + "https://github.com/d0b3rm4n/harbour-daybreak</a>"
                    + "<br>"
                    + "<br>Please report bugs and issues here:"
                    + "<br><a href='https://github.com/d0b3rm4n/harbour-daybreak/issues'>"
                    + "https://github.com/d0b3rm4n/harbour-daybreak/issues</a>"
                    + "<br>"
                    + "<br> Locations from"
                    + "<br><a href='http://www.geonames.org/'>"
                    + "http://www.geonames.org/</a>"
                    + "<br>Creative Commons Attribution 3.0 License"
                    return msg
                }
                text: getText()
            }
        }
    }
}
