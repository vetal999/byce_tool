/****************************************************************************
** Meta object code from reading C++ file 'mainwindow.h'
**
** Created: Wed Jun 5 20:48:43 2013
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "mainwindow.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_MainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      12,   11,   11,   11, 0x08,
      31,   11,   11,   11, 0x08,
      54,   11,   11,   11, 0x08,
      71,   11,   11,   11, 0x08,
      85,   11,   11,   11, 0x08,
     110,   11,   11,   11, 0x08,
     138,   11,   11,   11, 0x08,
     156,   11,   11,   11, 0x08,
     181,   11,   11,   11, 0x08,
     205,   11,   11,   11, 0x08,
     230,   11,   11,   11, 0x08,
     256,   11,   11,   11, 0x08,
     273,   11,   11,   11, 0x0a,
     285,   11,   11,   11, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_MainWindow[] = {
    "MainWindow\0\0showWindowOption()\0"
    "buttonOpenCloseClick()\0showBusMonitor()\0"
    "readRequest()\0readRequestButtonClick()\0"
    "mbTimerSetTimeInterval(int)\0"
    "lineEditChenged()\0registersReadRegisters()\0"
    "registersReadDeviceId()\0"
    "registersWriteRegister()\0"
    "registersClearRegisters()\0eswitchStartOn()\0"
    "eswitchOn()\0eswitchOff()\0"
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->showWindowOption(); break;
        case 1: _t->buttonOpenCloseClick(); break;
        case 2: _t->showBusMonitor(); break;
        case 3: _t->readRequest(); break;
        case 4: _t->readRequestButtonClick(); break;
        case 5: _t->mbTimerSetTimeInterval((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->lineEditChenged(); break;
        case 7: _t->registersReadRegisters(); break;
        case 8: _t->registersReadDeviceId(); break;
        case 9: _t->registersWriteRegister(); break;
        case 10: _t->registersClearRegisters(); break;
        case 11: _t->eswitchStartOn(); break;
        case 12: _t->eswitchOn(); break;
        case 13: _t->eswitchOff(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData MainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_MainWindow,
      qt_meta_data_MainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &MainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_MainWindow))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
