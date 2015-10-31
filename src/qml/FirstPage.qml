/***************************************************************************

    FirstPage.qml - Daybreak, A Sun and Moon rise and set calculator
    Copyright 2015 Reto Zingg <g.d0b3rm4n@gmail.com>

 ***************************************************************************/

/*
  Copyright (C) 2013 Jolla Ltd.
  Contact: Thomas Perl <thomas.perl@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    property var date
    property int latitude
    property int longitude


    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: "About"
                onClicked: {
//                    console.log("Clicked option About")
                    pageStack.push(Qt.resolvedUrl("about.qml"))
                }
            }
            MenuItem {
                text: "Help"
                onClicked: {
//                    console.log("Clicked option Help")
                    pageStack.push(Qt.resolvedUrl("help.qml"))
                }
            }
//            MenuItem {
//                text: "Settings"
//                onClicked: {
//                    console.log("Clicked option Settings")
//                    pageStack.push(Qt.resolvedUrl("settings.qml"))
//                }
//            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Daybreak")
            }
            ValueButton {
                property date selectedDate

                function openDateDialog() {
                    var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog", {
                                                    date: selectedDate
                                                })

                    dialog.accepted.connect(function() {
                        value = dialog.dateText
                        selectedDate = dialog.date
                    })
                }

                label: "Date"
                value: qsTr("Select")
                width: parent.width
                onClicked: openDateDialog()
            }

            ValueButton {
                property date selectedDate

                function openDateDialog() {
                    var dialog = pageStack.push("SearchPage.qml")

                    dialog.accepted.connect(function() {
                        console.log("dialog name: " + dialog.name)
                        console.log("dialog lat: " + dialog.latitude)
                        console.log("dialog lon: " + dialog.longitude)
                    })
                }

                label: qsTr("Location")
                value: qsTr("Select")
                width: parent.width
                onClicked: openDateDialog()
            }
        }
    }
}


