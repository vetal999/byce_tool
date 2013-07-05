#ifndef ESWITCH_H
#define ESWITCH_H

#include "modbus.h"
#include <stddef.h>
#include <QString>
#include <QMessageBox>
#include <QLabel>
#include <QPushButton>
#include <QObject>
#include <QTimer>

#include "hardware.h"

// конкретный класс выключателя
// в дальнейшем придумать базовый класс и наследовать выключатель от него
// пока так, буду понимать что мне нужно и как должно работать

/*
 * как должне выглядеть базовый класс
 * реализованны функции чтетия/записи одного регистра и набора регистров
 * инициализация указателя на порт происходит единожды, указатель общий для всех потомков (статик)
 * имя и адрес девайса инициализируется в конструкторе
 * общие методы и свойства для всех классов (виртуальные в базовом:
 *  имя, адрес
 *  рефреш (там генерятся все сигналы)
 *  сеттингс (конструктор окна для настройки девайса)
 *  установка и считывание всех полей
 *
 * все проверки наличия открытого порта и т.д. в базовом классе
 *
 */
class eSwitch : public Hardware
{
    Q_OBJECT

public:
    enum {e_off = 0, e_on = 1};

    //eSwitch(const QString &name, int addr);
    eSwitch(QWidget *parent = 0, QString name = QString::fromLocal8Bit("eSwitch"), int addr = 1);
    QString name;

    void paintEvent(QPaintEvent *);
    QLabel *nameDev;

    QTimer *readTimer;

    int eSwitchOutState;

    //static void setMbPort(modbus_t *port);
    void setMbPort(modbus_t *port);

    void settings(void);
    quint16 getState(void);
    void setState(int state);
    void refresh(void);

    void setMbAddr(int addr);
    int getMbAddr();
    void on(void);
    void off(void);

private:
    QPushButton *mainButton;
    int mbAddr;
    modbus_t *mbPort;
    void changeButtonIcon(void);

private slots:
    void mainButtonClick(void);
    void readTimerEvent(void);

};

#endif // ESWITCH_H
