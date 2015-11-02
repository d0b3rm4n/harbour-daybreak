
#include "dbastro.h"
#include "../logging.h"

DbAstro::DbAstro(QObject *parent) :
    QObject(parent)
{
    IN;
}

DbAstro::~DbAstro()
{
    IN;
}

QDateTime DbAstro::getSunRise(QDate date, double latitude, double longitude)
{
    IN;
    LOG() << date << latitude << longitude;
}

QDateTime DbAstro::getSunSet(QDate date, double latitude, double longitude)
{
    IN;
    LOG() << date << latitude << longitude;
}

QDateTime DbAstro::getMoonRise(QDate date, double latitude, double longitude)
{
    IN;
    LOG() << date << latitude << longitude;
}

QDateTime DbAstro::getMoonSet(QDate date, double latitude, double longitude)
{
    IN;
    LOG() << date << latitude << longitude;
}
