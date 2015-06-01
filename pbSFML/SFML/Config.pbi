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

; SFML VERSION 
;
#PBSFML_VERSION_MAJOR = 2
#PBSFML_VERSION_MINOR = 2
#PBSFML_VERSION_PATCH = 0


; SYSTEM SPECIFIC
;
CompilerIf #PB_Compiler_OS = #PB_OS_Windows
  #PBSFML_SYSTEM_WINDOWS = 1
CompilerEndIf

CompilerIf #PB_Compiler_OS = #PB_OS_MacOS
  #PBSFML_SYSTEM_MACOS   = 1
CompilerEndIf

CompilerIf #PB_Compiler_OS = #PB_OS_Linux
  #PBSFML_SYSTEM_LINUX   = 1
CompilerEndIf

; boolean type
;
#sfFalse = 0
#sfTrue  = 1

Macro sfBool:b:EndMacro

; 8 bits types
;
Macro sfInt8:b:EndMacro
Macro sfUInt8:a:EndMacro

; 16 bits types
;
Macro sfInt16:w:EndMacro
Macro sfUInt16:u:EndMacro

; 32 bits types
;
Macro sfInt32:i:EndMacro
Macro sfUInt32:i:EndMacro ; Possible bug with x86 processor

; 64 bits types
;
Macro sfInt64:d:EndMacro
Macro sfUInt64:d:EndMacro 


;-macro helper
;
Macro _
  , 
EndMacro

Macro void
EndMacro

Macro IMPORT_FUNCTION(library,  name, retVal, param, funcName)
  PrototypeC#retVal name(param)
  Global name.name = GetFunction(library,funcName)
  
  If name = #Null 
    MessageRequester("Error","Function "+funcName+" is missing in library")
    End 
  EndIf 
  
EndMacro



