////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2015 Laurent Gomila (laurent@sfml-dev.org)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// Headers
////////////////////////////////////////////////////////////
#include <SFML/Window/Mouse.h>
#include <SFML/Window/WindowStruct.h>
#include <SFML/Window/Mouse.hpp>
#include <SFML/Internal.h>


////////////////////////////////////////////////////////////
sfBool sfMouse_isButtonPressed(sfMouseButton button)
{
    return sf::Mouse::isButtonPressed(static_cast<sf::Mouse::Button>(button)) ? sfTrue : sfFalse;
}


////////////////////////////////////////////////////////////
void sfMouse_getPosition(int * x, int * y, const sfWindow* relativeTo)
{
    sf::Vector2i sfmlPos;
    if (relativeTo)
        sfmlPos = sf::Mouse::getPosition(relativeTo->This);
    else
        sfmlPos = sf::Mouse::getPosition();

		*x = sfmlPos.x;
		*y = sfmlPos.y;		
    
}


////////////////////////////////////////////////////////////
void sfMouse_setPosition(int x, int y, const sfWindow* relativeTo)
{
    if (relativeTo)
        sf::Mouse::setPosition(sf::Vector2i(x, y), relativeTo->This);
    else
        sf::Mouse::setPosition(sf::Vector2i(x, y));
}
