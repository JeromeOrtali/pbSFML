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

Enumeration ;sfWindowStyle
  #sfNone         = 0                                   ; No border / title bar (this flag And all others are mutually exclusive)
  #sfTitlebar     = 1 << 0                              ; Title bar + fixed border
  #sfResize       = 1 << 1                              ; Titlebar + resizable border + maximize button
  #sfClose        = 1 << 2                              ; Titlebar + close button
  #sfFullscreen   = 1 << 3                              ; Fullscreen mode (this flag And all others are mutually exclusive)
  #sfDefaultStyle = #sfTitlebar | #sfResize | #sfClose  ; Default window style
EndEnumeration


Structure sfContextSettings
  depthBits.i          ; Bits of the depth buffer
  stencilBits.i        ; Bits of the stencil buffer
  antialiasingLevel.i  ; Level of antialiasing
  majorVersion.i       ; Major number of the context version to create
  minorVersion.i       ; Minor number of the context version to create
EndStructure
  

IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_create, .i              , *sfVideoMode _ title.s _ style.sfUint32 _ *sfContextSettings , "sfWindow_create")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_createUnicode           , .i      , *sfVideoMode _ title.s _ style.sfUint32 _ *sfContextSettings , "sfWindow_createUnicode")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_createFromHandle        , .i      , handle _ *sfContextSettings , "sfWindow_createFromHandle")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_destroy                 , void    , *window   , "sfWindow_destroy")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_close                   , void    , *window   , "sfWindow_close")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_isOpen                  , .sfBool , *window   , "sfWindow_isOpen")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_getSettings             , void    , *window _ *sfContextSettings   , "sfWindow_getSettings")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_pollEvent               , .sfBool , *window _ *sfEvent   , "sfWindow_pollEvent")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_waitEvent               , .sfBool , *window _ *sfEvent   , "sfWindow_waitEvent")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_getPosition             , void , *window _ *x _ *y   , "sfWindow_getPosition")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setPosition             , void , *window _ x _ y   , "sfWindow_setPosition")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_getSize                 , void , *window _ *x _ *y   , "sfWindow_getSize")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setSize                 , void , *window _ x.i _ y.i   , "sfWindow_setSize")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setTitle                , void , *window _ title.s   , "sfWindow_setTitle")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setUnicodeTitle         , void , *window _ title.s   , "sfWindow_setUnicodeTitle")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setIcon                 , void , *window _ width.i _ height.i _ *pixels  , "sfWindow_setIcon")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setVisible              , void , *window _ visible.sfBool  , "sfWindow_setVisible")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setMouseCursorVisible   , void , *window _ visible.sfBool  , "sfWindow_setMouseCursorVisible")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setVerticalSyncEnabled  , void , *window _ enabled.sfBool  , "sfWindow_setVerticalSyncEnabled")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setKeyRepeatEnabled     , void , *window _ enabled.sfBool  , "sfWindow_setKeyRepeatEnabled")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setActive               , .sfBool , *window _ active.sfBool  , "sfWindow_setActive")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_requestFocus            , void , *window  , "sfWindow_requestFocus")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_hasFocus                , .sfBool , *window  , "sfWindow_hasFocus")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_display                 , void , *window  , "sfWindow_display")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setFramerateLimit       , void , *window _ limit.i  , "sfWindow_setFramerateLimit")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_setJoystickThreshold    , void , *window _ threshold.f  , "sfWindow_setJoystickThreshold")
IMPORT_FUNCTION(CSFML_WINDOW, sfWindow_getSystemHandle         , .i , *window , "sfWindow_getSystemHandle")



  
  