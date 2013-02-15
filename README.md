jquery-phonegap-app
===================

Es gibt verschiedene Möglichkeiten platformübergreifend
Mobile-Apps zu entwickeln.

Eine Möglichkeit ist die Kombination von folgenden Technologien:

Übergreifend:
* jquery-Mobile
* PhoneGap/Cordova

Android Zeilsystem:
* eclipse
* android sdk
* eclipse android plugin 

In diesem Project habe ich eine bei mir funktionierende Version abgelegt
welche ich nutze um eine KKennzahlen android app zu erstellen.

* cordova: http://cordova.apache.org/
* jquery mobile: http://jquerymobile.com/download/
* android sdk: http://developer.android.com/sdk/index.html
* eclipse: http://www.eclipse.org/downloads/
* eclipse android plugin: https://dl-ssl.google.com/android/eclipse/

1. Zunächst muss das androd sdk nstalliert werden.
2. eclipse installieren (zumindest java version)
3. eclipse android plugin installieren (http://developer.android.com/sdk/installing/installing-adt.html)
4. jquery app bauen (in diesem Beispiel generiere ich eine jquery-kennzalen-app siehe ruby-Html-generator)
5. cordova runterladen und ausbacken (cordova 2.4.0 in diesem repo ist bereits ausgepackt für android)
6. ein eclipse android projekt mittels cordova bauen ("./create <ordner der jquery app> <package> <appname>")
7. Projekt in eclipse anpassen (startbilder, permissions,...)
8. jquery app in asset/www ordner kopieren 
9. bauen

