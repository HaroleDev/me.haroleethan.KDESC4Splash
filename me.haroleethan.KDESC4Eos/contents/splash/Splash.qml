/*
    SPDX-FileCopyrightText: 2024 Harole Ethan <https://haroleethan.studio.site>

    Oxygen Icons and Theme by The Oxygen Team <https://invent.kde.org/frameworks/oxygen-icons/-/blob/master/AUTHORS>

    This is a recreation of the final version of KDE SC 4's Splash Screen and is meant to look almost one to one with the original.

    SPDX-License-Identifier: LGPL-2.1-or-later
*/

import QtQuick 2.0

Image {
    id: root
    source: "images/background.png"

    property int stage

    Image {
        id: topRect
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "images/rectangle.png"

        AnimatedSprite {
            id: icon1
            source: "images/icon1_animated.png"
            frameWidth: 56
            frameHeight: 104
            frameCount: 14
            frameDuration: 49

            loops: AnimatedSprite.Infinite
            x: 13
            y: ((topRect.height - height) / 2) + 14
            running: root.stage === 1
            visible: root.stage >= 1
            onRunningChanged: {
                if (!running) {
                    currentFrame = 0
                }
            }
        }
        AnimatedSprite {
            id: icon2
            source: "images/icon2_animated.png"
            frameWidth: 56
            frameHeight: 104
            frameCount: 14
            frameDuration: 49

            loops: AnimatedSprite.Infinite
            x: icon1.x + (56 * 1) + (7 * 1) + (5 * 1)
            y: icon1.y
            running: root.stage === 2
            visible: root.stage >= 2
            onRunningChanged: {
                if (!running) {
                    currentFrame = 0
                }
            }
        }
        AnimatedSprite {
            id: icon3
            source: "images/icon3_animated.png"
            frameWidth: 56
            frameHeight: 104
            frameCount: 14
            frameDuration: 49

            loops: AnimatedSprite.Infinite
            x: icon1.x + (56 * 2) + (7 * 2) + (5 * 2)
            y: icon2.y
            running: root.stage === 3
            visible: root.stage >= 3
            onRunningChanged: {
                if (!running) {
                    currentFrame = 0
                }
            }
        }
        AnimatedSprite {
            id: icon4
            source: "images/icon4_animated.png"
            frameWidth: 56
            frameHeight: 104
            frameCount: 14
            frameDuration: 49

            loops: AnimatedSprite.Infinite
            x: icon1.x + (56 * 3) + (7 * 3) + (5 * 3)
            y: icon3.y
            running: root.stage === 4
            visible: root.stage >= 4
            onRunningChanged: {
                if (!running) {
                    currentFrame = 0
                }
            }
        }
        AnimatedSprite {
            id: icon5
            source: "images/icon5_animated.png"
            frameWidth: 100
            frameHeight: 186
            frameCount: 14
            frameDuration: 49

            loops: AnimatedSprite.Infinite
            x: icon1.x + (56 * 4) + (7 * 4) + (5 * 4)
            y: icon4.y - 28
            running: root.stage === 5
            visible: root.stage >= 5
            onRunningChanged: {
                if (!running) {
                    currentFrame = 0
                }
            }
        }
    }
}
