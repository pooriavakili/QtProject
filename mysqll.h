#ifndef MYSQLLLL_H
#define MYSQLLLL_H

#include <QObject>
#include<qsql>
#include<QSqlField>
#include<QSqlQuery>
#include<QSqlDatabase>
#include<QSqlError>
#include<QMessageBox>
#include<QByteArray>
#define TABLE "TABLE_NAME"
#define DATABASE_HOSTNAME "DATABASE_NAME"
#define DATABASE_NAME    "Database.db"
#define N_NAME   "NameKHANEVADEGHY"
#define K_NAME "KODMELY"
#define P_NAME  "POSTELECTRONIC"
#define H_NAME "HAMRAH"

#define R_NAME "RAMZUBUR"
#define RR_NAME  "TEKRARRAMZUBUR"

class MySqllll : public QObject
{
    Q_OBJECT

public:
    explicit MySqllll(QObject *parent = nullptr);
    void myconnectDatabase();
    QSqlQuery *query;
    QString *NameKhanevadeghy;
    int *kodmely;
    QString *post;
    int *hamrah;
    int *ramz;
    int *tekrarramz;
private:
       QSqlDatabase Database;
signals:

public slots:

       bool CreateToTable(const QVariantList &data);
           void inserttotable(const QString &,const QString &,const QString &,const QString &,const QString &,const QString &);
};

#endif // MYSQLLLL_H

