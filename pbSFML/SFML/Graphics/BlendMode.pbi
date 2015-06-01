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

Enumeration ;sfBlendFactor
  #sfBlendFactorZero              ; (0, 0, 0, 0)
  #sfBlendFactorOne               ; (1, 1, 1, 1)
  #sfBlendFactorSrcColor          ; (src.r, src.g, src.b, src.a)
  #sfBlendFactorOneMinusSrcColor  ; (1, 1, 1, 1) - (src.r, src.g, src.b, src.a)
  #sfBlendFactorDstColor          ; (dst.r, dst.g, dst.b, dst.a)
  #sfBlendFactorOneMinusDstColor  ; (1, 1, 1, 1) - (dst.r, dst.g, dst.b, dst.a)
  #sfBlendFactorSrcAlpha          ; (src.a, src.a, src.a, src.a)
  #sfBlendFactorOneMinusSrcAlpha  ; (1, 1, 1, 1) - (src.a, src.a, src.a, src.a)
  #sfBlendFactorDstAlpha          ; (dst.a, dst.a, dst.a, dst.a)
  #sfBlendFactorOneMinusDstAlpha  ; (1, 1, 1, 1) - (dst.a, dst.a, dst.a, dst.a)
EndEnumeration

Enumeration ;sfBlendEquation
 #sfBlendEquationAdd      ; Pixel = Src * SrcFactor + Dst * DstFactor
 #sfBlendEquationSubtract ; Pixel = Src * SrcFactor - Dst * DstFactor
EndEnumeration

Structure sfBlendMode
  colorSrcFactor.l    ; Source blending factor for the color channels
  colorDstFactor.l    ; Destination blending factor for the color channels
  colorEquation.l     ; Blending equation for the color channels
  alphaSrcFactor.l    ; Source blending factor for the alpha channel
  alphaDstFactor.l    ; Destination blending factor for the alpha channel
  alphaEquation.l     ; Blending equation for the alpha channel
EndStructure


Global sfBlendAlpha.sfBlendMode
Global sfBlendAdd.sfBlendMode
Global sfBlendAdd.sfBlendMode
Global sfBlendAdd.sfBlendMode

sfBlendAlpha\colorSrcFactor   = #sfBlendFactorSrcAlpha
sfBlendAlpha\colorDstFactor   = #sfBlendFactorOneMinusSrcAlpha
sfBlendAlpha\colorEquation    = #sfBlendEquationAdd
sfBlendAlpha\alphaSrcFactor   = #sfBlendFactorOne
sfBlendAlpha\alphaDstFactor   = #sfBlendFactorOneMinusSrcAlpha
sfBlendAlpha\alphaEquation    = #sfBlendEquationAdd

sfBlendAdd\colorSrcFactor     = #sfBlendFactorSrcAlpha
sfBlendAdd\colorDstFactor     = #sfBlendFactorOne
sfBlendAdd\colorEquation      = #sfBlendEquationAdd
sfBlendAdd\alphaSrcFactor     = #sfBlendFactorOne
sfBlendAdd\alphaDstFactor     = #sfBlendFactorOne
sfBlendAdd\alphaEquation      = #sfBlendEquationAdd

sfBlendAdd\colorSrcFactor     = #sfBlendFactorDstColor
sfBlendAdd\colorDstFactor     = #sfBlendFactorZero
sfBlendAdd\colorEquation      = #sfBlendEquationAdd
sfBlendAdd\alphaSrcFactor     = #sfBlendFactorDstColor
sfBlendAdd\alphaDstFactor     = #sfBlendFactorZero
sfBlendAdd\alphaEquation      = #sfBlendEquationAdd

sfBlendAdd\colorSrcFactor     = #sfBlendFactorOne
sfBlendAdd\colorDstFactor     = #sfBlendFactorZero
sfBlendAdd\colorEquation      = #sfBlendEquationAdd
sfBlendAdd\alphaSrcFactor     = #sfBlendFactorOne
sfBlendAdd\alphaDstFactor     = #sfBlendFactorZero
sfBlendAdd\alphaEquation      = #sfBlendEquationAdd




