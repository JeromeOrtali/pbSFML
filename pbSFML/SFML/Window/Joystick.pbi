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

XIncludeFile "JoystickIdentification.pbi"


Enumeration
  #sfJoystickCount       = 8     ; Maximum number of supported joysticks
  #sfJoystickButtonCount = 32    ; Maximum number of supported buttons
  #sfJoystickAxisCount   = 8     ; Maximum number of supported axes
EndEnumeration


Enumeration ;sfJoystickAxis
  #sfJoystickX     ; The X axis
  #sfJoystickY     ; The Y axis
  #sfJoystickZ     ; The Z axis
  #sfJoystickR     ; The R axis
  #sfJoystickU     ; The U axis
  #sfJoystickV     ; The V axis
  #sfJoystickPovX  ; The X axis of the point-of-view hat
  #sfJoystickPovY  ; The Y axis of the point-of-view hat
EndEnumeration


IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_isConnected    ,   .sfBool , joystick.i                    , "sfJoystick_isConnected")
IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_getButtonCount ,   .i      , joystick.i                    , "sfJoystick_getButtonCount")
IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_hasAxis        ,   .sfBool , joystick.i _ sfJoystickAxis   , "sfJoystick_hasAxis")
IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_isButtonPressed,   .sfBool , joystick.i _ button           , "sfJoystick_isButtonPressed")
IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_getAxisPosition,   .f      , joystick.i _ sfJoystickAxis   , "sfJoystick_getAxisPosition")
IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_getIdentification, .i      , joystick.i                    , "sfJoystick_getIdentification") ; return *sfJoystickIdentification
IMPORT_FUNCTION(CSFML_WINDOW, sfJoystick_update           , .i      , void                          , "sfJoystick_update") 









