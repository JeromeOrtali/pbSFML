; ////////////////////////////////////////////////////////////
; //
; // SFML - Simple And Fast Multimedia Library
; // Copyright (C) 2007-2015 Laurent Gomila (laurent@sfml-dev.org)
; //
; // This software is provided 'as-is', without any express Or implied warranty.
; // In no event will the authors be held liable For any damages arising from the use of this software.
; //
; // Permission is granted To anyone To use this software For any purpose,
; // including commercial applications, And To alter it And redistribute it freely,
; // subject To the following restrictions:
; //
; // 1. The origin of this software must Not be misrepresented;
; //    you must Not claim that you wrote the original software.
; //    If you use this software in a product, an acknowledgment
; //    in the product documentation would be appreciated but is Not required.
; //
; // 2. Altered source versions must be plainly marked As such,
; //    And must Not be misrepresented As being the original software.
; //
; // 3. This notice may Not be removed Or altered from any source distribution.
; //
; ////////////////////////////////////////////////////////////

XIncludeFile "Keyboard.pbi"


Enumeration ;sfEventType
  #sfEvtClosed                  ; The window requested To be closed (no Data)
  #sfEvtResized                 ; The window was resized (Data in event.size)
  #sfEvtLostFocus               ; The window lost the focus (no Data)
  #sfEvtGainedFocus             ; The window gained the focus (no Data)
  #sfEvtTextEntered             ; A character was entered (Data in event.text)
  #sfEvtKeyPressed              ; A key was pressed (Data in event.key)
  #sfEvtKeyReleased             ; A key was released (Data in event.key)
  #sfEvtMouseWheelMoved         ; The mouse wheel was scrolled (Data in event.mouseWheel)
  #sfEvtMouseButtonPressed      ; A mouse button was pressed (Data in event.mouseButton)
  #sfEvtMouseButtonReleased     ; A mouse button was released (Data in event.mouseButton)
  #sfEvtMouseMoved              ; The mouse cursor moved (Data in event.mouseMove)
  #sfEvtMouseEntered            ; The mouse cursor entered the area of the window (no Data)
  #sfEvtMouseLeft               ; The mouse cursor left the area of the window (no Data)
  #sfEvtJoystickButtonPressed   ; A joystick button was pressed (Data in event.joystickButton)
  #sfEvtJoystickButtonReleased  ; A joystick button was released (Data in event.joystickButton)
  #sfEvtJoystickMoved           ; The joystick moved along an axis (Data in event.joystickMove)
  #sfEvtJoystickConnected       ; A joystick was connected (Data in event.joystickConnect)
  #sfEvtJoystickDisconnected    ; A joystick was disconnected (Data in event.joystickConnect)
  #sfEvtTouchBegan              ; A touch event began (Data in event.touch)
  #sfEvtTouchMoved              ; A touch moved (Data in event.touch)
  #sfEvtTouchEnded              ; A touch event ended (Data in event.touch)
  #sfEvtSensorChanged           ; A sensor value changed (Data in event.sensor)
  #sfEvtCount                   ; Keep last -- the total number of event types
EndEnumeration


Structure sfKeyEvent
  type.l ; enum sfEventType
  code.l ; enum sfKeyCode
  alt.sfBool
  control.sfBool
  shift.sfBool
  system.sfBool
EndStructure


Structure sfTextEvent
  type.l ; enum sfEventType
  unicode.sfUint32
EndStructure


Structure sfMouseMoveEvent
  type.l ; enum sfEventType
  x.i
  y.i
EndStructure

Structure sfMouseButtonEvent
  type.l ; enum sfEventType
  button.l; enum sfMouseButton
  x.i
  y.i
EndStructure

Structure sfMouseWheelEvent
  type.l ; enum sfEventType
  delta.i
  x.i
  y.i
EndStructure
  
Structure sfJoystickMoveEvent
  type.l ; enum sfEventType
  joystickId.l
  axis.l; enum sfJoystickAxis
  position.f
EndStructure

Structure sfJoystickButtonEvent
  type.l ; enum sfEventType
  joystickId.i
  button.i
EndStructure

Structure sfJoystickConnectEvent
  type.l ; enum sfEventType
  joystickId.i
EndStructure

Structure sfSizeEvent
  type.l ; enum sfEventType
  width.l
  height.l
EndStructure


Structure sfEvent
  StructureUnion
    type.l ; enum sfEventType
    size.sfSizeEvent
    key.sfKeyEvent
    text.sfTextEvent
    mouseMove.sfMouseMoveEvent
    mouseButton.sfMouseButtonEvent
    MouseWheel.sfMouseWheelEvent
    joystickMove.sfJoystickMoveEvent
    joystickButton.sfJoystickButtonEvent
    joystickConnect.sfJoystickConnectEvent
  EndStructureUnion
EndStructure






 