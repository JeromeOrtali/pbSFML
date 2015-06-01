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


; function's signatures
;
; read.sfInt64 (*data, size.sfInt64, *userData)
; seek.sfInt64 (position.sfInt64, *userData)
; teel.sfInt64 (*userData)
; getSize.sfInt64 (*userData)

Structure sfInputStream
  *read           ;Function To Read Data from the stream
  *seek           ;Function To set the current Read position
  *tell           ;Function To get the current Read position
  *getSize        ;Function To get the total number of bytes in t
  *userdata       ;User Data that will be passed To the callbacks
EndStructure

