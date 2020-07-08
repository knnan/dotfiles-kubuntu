/*
    Copyright 2015 David Edmundson <davidedmundson@kde.org>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License or (at your option) version 3 or any later version
 * accepted by the membership of KDE e.V. (or its successor approved
 * by the membership of KDE e.V.), which shall act as a proxy
 * defined in Section 14 of version 3 of the license.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */

import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

GridLayout 
{    
    property alias cfg_textFont: fontDialog.font
    property alias cfg_textColor: colorPicker.chosenColor

    columns: 2
    Label {
        text: "Fuente:"
    }
        
    RowLayout {
        Label {
            text: fontDialog.font.family
            Layout.fillWidth: true
        }
        Button {
            text: "Elegir..."
            onClicked: fontDialog.visible = true;
            FontDialog {
                id: fontDialog
            }
        }
    }

    Label {
        text: "Color:"
    }
    
    ColorPicker{
        id: colorPicker
    }
    
    Item {Layout.fillHeight: true}
    
}
