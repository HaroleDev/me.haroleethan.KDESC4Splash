/*
    SPDX-FileCopyrightText: 2024 Harole Ethan <https://haroleethan.studio.site>

    Oxygen Icons and Theme by The Oxygen Team <https://invent.kde.org/frameworks/oxygen-icons/-/blob/master/AUTHORS>

    This is a recreation of the final version of KDE SC 4's Splash Screen and is meant to look almost one to one with the original.

    SPDX-License-Identifier: LGPL-2.1-or-later
*/

import QtQuick 2.2

Image {
    id: root
    source: "images/background.png"


    property int stage
    property int icon1Counter: 0
    property int icon2Counter: 0
    property int icon3Counter: 0
    property int icon4Counter: 0
    property int icon5Counter: 0


    onStageChanged: {
        switch (stage) {
            case 1:
                icon1Timer.start()
                break
            case 2:
                icon2Timer.start()
                break
            case 3:
                icon3Timer.start()
                break
            case 4:
                icon4Timer.start()
                break
            case 5:
                icon5Timer.start()
                break
        }
    }

    Timer {
        id: icon1Timer
        interval: 31  // Adjust this value to control the frame rate
        running: false
        repeat: true
        onTriggered: {
            if (root.icon1Counter === 31) {
                root.icon1Counter++
                icon1Timer.stop()
            } else {
                root.icon1Counter++
                icon1.source = "images/icon1/icon1_" + icon1Counter + ".png" // Replace with your image filenames
            }
        }
    }

    Timer {
        id: icon2Timer
        interval: 31
        running: false
        repeat: true
        onTriggered: {
            if (root.icon2Counter === 31) {
                root.icon2Counter++
                icon2Timer.stop()
            } else {
                root.icon2Counter++
                icon2.source = "images/icon2/icon2_" + icon2Counter + ".png"
            }
        }
    }

    Timer {
        id: icon3Timer
        interval: 31
        running: false
        repeat: true
        onTriggered: {
            if (root.icon3Counter === 31) {
                root.icon3Counter++
                icon3Timer.stop()
            } else {
                root.icon3Counter++
                icon3.source = "images/icon3/icon3_" + icon3Counter + ".png"
            }
        }
    }

    Timer {
        id: icon4Timer
        interval: 31
        running: false
        repeat: true
        onTriggered: {
            if (root.icon4Counter === 31) {
                root.icon4Counter++
                icon4Timer.stop()
            } else {
                root.icon4Counter++
                icon4.source = "images/icon4/icon4_" + icon4Counter + ".png"
            }
        }
    }

    Timer {
        id: icon5Timer
        interval: 31
        running: false
        repeat: true
        onTriggered: {
            if (root.icon5Counter === 31) {
                root.icon5Counter++
                icon5Timer.stop()
            } else {
                root.icon5Counter++
                icon5.source = "images/icon5/icon5_" + icon5Counter + ".png"
            }
        }
    }

    Image {
        id: topRect
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "images/rectangle.png"
        Image {
            id: icon1
            x: (48 * 0) + (18 * 0) + 18
            y: 80
            visible: stage >= 1
        }
        Image {
            id: icon2
            x: (48 * 1) + (18 * 1) + 18
            y: 80
            visible: stage >= 2
        }
        Image {
            id: icon3
            x: (48 * 2) + (18 * 2) + 18
            y: 80
            visible: stage >= 3
        }
        Image {
            id: icon4
            x: (48 * 3) + (18 * 3) + 18
            y: 80
            visible: stage >= 4
        }
        Image {
            id: icon5
            x: (31 * 4) + (18 * 4) + 18 + 48 + 16
            y: 80 - (48 - 12 - 1)
            visible: stage >= 5
        }
    }
}
