/*
 * berggrens.hxx
 * 
 * Copyright 2021 Mike <mike@pop-os>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

#ifndef __BERGGRENS_HXX__
#define __BERGGRENS_HXX__
#include <iostream>
#include <vector>
#include <tuple>
#include <cstdint>
#include "library.hxx"

typedef uint64_t UL;
typedef std::tuple<UL,UL,UL> PyTpl;
typedef std::vector<PyTpl> Tform;
#endif
