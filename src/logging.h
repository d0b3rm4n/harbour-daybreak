/***************************************************************************

    Copyright 2015 Reto Zingg <g.d0b3rm4n@gmail.com>

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
#ifndef LOGGING_H
#define LOGGING_H

#include <QDebug>

#define LOG() \
    qDebug()

#define IN LOG() << "IN"
#define OUT LOG() << "OUT"

#endif // LOGGING_H
