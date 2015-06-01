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

CompilerIf Not Defined(PBSFML_INCLUDE_DIR,#PB_Constant)
  #PBSFML_INCLUDE_DIR = ""
CompilerEndIf

XIncludeFile #PBSFML_INCLUDE_DIR+"Config.pbi"


CompilerIf Defined(PBSFML_SYSTEM_WINDOWS,#PB_Constant)
  #PBSFML_WINDOW_LIB = "csfml-window-2.dll"
CompilerEndIf 

CompilerIf Defined(PBSFML_SYSTEM_LINUX,#PB_Constant)
  #PBSFML_WINDOW_LIB = "lcsfml-window.so"
CompilerEndIf 

CompilerIf Defined(PBSFML_SYSTEM_MACOS,#PB_Constant)
  #PBSFML_WINDOW_LIB = "?"
CompilerEndIf 

; Open shared library
;
Global CSFML_WINDOW = OpenLibrary(#PB_Any,#PBSFML_WINDOW_LIB)


XIncludeFile #PBSFML_INCLUDE_DIR+"/System.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/Context.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/Event.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/Joystick.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/Keyboard.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/Mouse.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/VideoMode.pbi"
XIncludeFile #PBSFML_INCLUDE_DIR+"/Window/Window.pbi"
