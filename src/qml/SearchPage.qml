/***************************************************************************

    SeachPage.qml - Daybreak, A Sun and Moon rise and set calculator
    Copyright 2015 Reto Zingg <g.d0b3rm4n@gmail.com>
    This file is based on the silicacomponentgallery-qt5 SearchPage.qml
    see copyright note below.

 ***************************************************************************/

/****************************************************************************************
**
** Copyright (C) 2013 Jolla Ltd.
** Contact: Joona Petrell <joona.petrell@jollamobile.com>
** All rights reserved.
** 
** This file is part of Sailfish Silica UI component package.
**
** You may use this file under the terms of BSD license as follows:
**
** Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are met:
**     * Redistributions of source code must retain the above copyright
**       notice, this list of conditions and the following disclaimer.
**     * Redistributions in binary form must reproduce the above copyright
**       notice, this list of conditions and the following disclaimer in the
**       documentation and/or other materials provided with the distribution.
**     * Neither the name of the Jolla Ltd nor the
**       names of its contributors may be used to endorse or promote products
**       derived from this software without specific prior written permission.
** 
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
** ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
** WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
** DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
** ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
** (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
** ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
** SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
****************************************************************************************/

import QtQuick 2.2
import Sailfish.Silica 1.0

Dialog{
    id: searchPage
    property string searchString
    property bool keepSearchFieldFocus: true
    property int curIndex
    property string name
    property int latitude
    property int longitude

    onDone: {
        if (result == DialogResult.Accepted) {
//            name = nameField.text
        }
    }

    allowedOrientations: defaultAllowedOrientations

    Keys.onReturnPressed: {

    }

    onSearchStringChanged: {
//        starDictLib.updateList(searchString)
    }

    Component.onCompleted: {
//        starDictLib.updateList(searchString)
    }

    Loader {
        anchors.fill: parent
        sourceComponent: listViewComponent
    }

    DialogHeader { id: dialogHeader }

    Column {
        id: headerContainer

        width: searchPage.width
        anchors.top: dialogHeader

        SearchField {
            id: searchField
            width: parent.width
            inputMethodHints: Qt.ImhNoAutoUppercase
            placeholderText: "Search for..."

            Binding {
                target: searchPage
                property: "searchString"
                value: searchField.text
            }
        }
    }

    Component {
        id: listViewComponent
        SilicaListView {
            id: listView
            model: ListModel {
                id: cities

                ListElement {
                    name: "Helsinki"
                    latitude: 60.16952
                    longitude: 24.93545
                }
                ListElement {
                    name: "Interlaken"
                    latitude: 46.68387
                    longitude: 7.86638
                }
                ListElement {
                    name: "Zürich"
                    latitude: 47.36667
                    longitude: 8.55
                }
            }
            anchors.fill: parent
            currentIndex: -1 // otherwise currentItem will steal focus

            Binding {
                target: searchPage
                property: "curIndex"
                value: listView.currentIndex
            }

            header:  Item {
                id: header
                width: headerContainer.width
                height: headerContainer.height
                Component.onCompleted: headerContainer.parent = header
            }

            delegate: ListItem{
                contentHeight: Theme.itemSizeMedium // two line delegate
                anchors.margins: Theme.paddingMedium
                onClicked: {
                    console.log("selected: " + name)
                    console.log("latitude: " + latitude)
                    console.log("longitude: " + longitude)

                    searchPage.name = name
                    searchPage.latitude = latitude
                    searchPage.longitude = longitude

                    highlighted = true
                }

                Label {
                    id: label
                    text: name
                    anchors {left: parent.left; right: parent.right}
                    anchors.margins: Theme.paddingMedium
                    color: Theme.primaryColor
                }
                Label {
                    anchors.top: label.bottom
                    text: getText()
                    anchors {left: parent.left; right: parent.right}
                    anchors.margins: Theme.paddingMedium
                    font.pixelSize: Theme.fontSizeSmall
                    color: Theme.secondaryColor

                    function getText() {
                        var msg = "latitude: " + latitude + " - longitude: " + longitude
                        return msg
                    }
                }
            }

            VerticalScrollDecorator {}

            Component.onCompleted: {
                if (keepSearchFieldFocus) {
                    searchField.forceActiveFocus()
                }
                keepSearchFieldFocus = false
            }
        }
    }
}
