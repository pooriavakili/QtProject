#include "modelurl.h"

#include <QDesktopServices>
#include <QUrl>

using namespace Service;

#if defined Q_OS_ANDROID
#define OS_MOBILE_ANDROID
#endif




#if   defined Q_OS_ANDROID
#define OS_MOBILE
#else
#define OS_DESKTOP
#endif
ModelUrl::ModelUrl()
{

}
void ModelUrl::sendsms(const QString &number){
#if defined (OS_MOBILE_IOS)
    QDesktopServices::openUrl(QUrl("sms://" + number));
#elif defined(OS_MOBILE_ANDROID)
    QDesktopServices::openUrl(QUrl("sms:" + number));
#else
    QDesktopServices::openUrl(QUrl("sms:09901140322//" + number));
#endif
}
void ModelUrl::sendEmail(const QString &address){
    QDesktopServices::openUrl(QUrl("mailto:parsianpi8@gmail.com" + address));
}

void ModelUrl::shareTelegram(const QString &content)
{
    QDesktopServices::openUrl(QUrl("tg:msg?text=Hello&to=+00989120622698"+content));


}
void ModelUrl::callPhone (const QString &number)
{

    QDesktopServices::openUrl(QUrl("tel://" + number));

}
void ModelUrl::promptCallPhone (const QString &number)
{

    QDesktopServices::openUrl(QUrl("telprompt://" + number));

}
