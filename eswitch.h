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
#include <QRadioButton>
#include <QTextStream>
#include <QDomElement>

#include "hardware.h"

#include "modbusregister.h"


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
    eSwitch(QObject *parent = 0, QString name = "eSwitch", int addr = 1);

    bool eSwitchOutState;
    bool dInState;
    int adcData;
    int adcHysteresis;

    bool getState(void);
    void setState(int state);
    void on(void);
    void off(void);

    bool refresh(void);
    bool isEvent(void);
    void generateXml(QTextStream &out);
    void parseXml(QDomElement &domElement);

signals:
    void dInRaise(void);
    void dInFall(void);

private:
    bool raiseEvent_;
    bool fallEvent_;
    bool adcEvent_;
    bool onEvent_;
    bool offEvent_;

};

#endif // ESWITCH_H
