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




Enumeration ;  sfMouseButton;
  #sfMouseLeft        ; The left mouse button
  #sfMouseRight       ; The right mouse button
  #sfMouseMiddle      ; The middle (wheel) mouse button
  #sfMouseXButton1    ; The first extra mouse button
  #sfMouseXButton2    ; The second extra mouse button
  #sfMouseButtonCount ; Keep last -- the total number of mouse buttons
EndEnumeration


IMPORT_FUNCTION(CSFML_WINDOW, sfMouse_isButtonPressed, .sfBool , sfMouseButton.l                  , "sfMouse_isButtonPressed")
IMPORT_FUNCTION(CSFML_WINDOW, sfMouse_getPosition, void        , *x _ *y _ *sfWindowrelativeTo              , "sfMouse_getPosition")
IMPORT_FUNCTION(CSFML_WINDOW, sfMouse_setPosition, void        , x.i _ y.i _ *sfWindowrelativeTo , "sfMouse_setPosition")



