#ifndef MODELURL_H
#define MODELURL_H

#include <QObject>
#define INVOKE Q_INVOKABLE
#include <QDesktopServices>
#include<QUrl>
#define INVOKE Q_INVOKABLE
namespace Service{


class ModelUrl : public QObject
{




    Q_OBJECT
public:

    ModelUrl ();




    INVOKE void callPhone       (const QString &number);
    INVOKE void promptCallPhone (const QString &number);
    INVOKE void sendsms        (const QString &number);
    INVOKE void sendEmail       (const QString &address);
     INVOKE void shareTelegram   (const QString &content);
    //Sharing method








};

}


#endif // MODELURL_H
