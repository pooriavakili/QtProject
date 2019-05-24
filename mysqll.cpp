#include "mysql.h"

MySqll::MySqll(QObject *parent) : QObject(parent)
{

}

void MySqllll::myconnectDatabase()
{
    Database.setHostName(DATABASE_HOSTNAME);
    Database.setDatabaseName(DATABASE_NAME);
    Database.addDatabase("QSQLITE");

}

bool MySqllll::CreateToTable(const QVariantList &data)
{
    if(Database.open()==true){
        return true;
    }
    else{
        return false;
    }

}

void MySqllll::inserttotable(const QString &NameKhanevadeghy,const QString &kodmely,const QString &post,const QString &hamrah,const QString &ramz,const QString &tekrarramz)
{
   QVariantList data;
    data.append(NameKhanevadeghy);
    data.append(kodmely);
    data.append(post);
    data.append(hamrah);
    data.append(ramz);
    data.append(tekrarramz);
    query->bindValue(NameKhanevadeghy,data[0].toString());
    query->bindValue(kodmely,data[1].toInt());
    query->bindValue(post,data[2].toString());
    query->bindValue(hamrah,data[3].toInt());
    query->bindValue(ramz,data[4].toInt());
    query->bindValue(tekrarramz,data[5].toInt());

}

