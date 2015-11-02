#ifndef DBASTRO_H
#define DBASTRO_H

#include <QObject>
#include <QDate>

class DbAstro : public QObject
{
    Q_OBJECT

public:
    explicit DbAstro(QObject *parent = 0);
    ~DbAstro();
    Q_INVOKABLE QDateTime getSunRise(QDate date, double latitude, double longitude);
    Q_INVOKABLE QDateTime getSunSet(QDate date, double latitude, double longitude);
    Q_INVOKABLE QDateTime getMoonRise(QDate date, double latitude, double longitude);
    Q_INVOKABLE QDateTime getMoonSet(QDate date, double latitude, double longitude);
};

#endif // DBASTRO_H
