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


IMPORT_FUNCTION(CSFML_SYSTEM,  sfThread_create,    .i   , *function _ *userData  , "sfThread_create")       
IMPORT_FUNCTION(CSFML_SYSTEM,  sfThread_destroy,   void , *sfThread              , "sfThread_destroy")       
IMPORT_FUNCTION(CSFML_SYSTEM,  sfThread_launch,    void , *sfThread              , "sfThread_launch")       
IMPORT_FUNCTION(CSFML_SYSTEM,  sfThread_wait,      void , *sfThread              , "sfThread_wait")       
IMPORT_FUNCTION(CSFML_SYSTEM,  sfThread_terminate, void , *sfThread              , "sfThread_terminate")       