#ifndef HARDWARE_H
#define HARDWARE_H

#include <QPushButton>
#include <QCheckBox>
#include <QDomDocument>
#include <QFile>
#include <QTextStream>

#include "module.h"
#include "modbus.h"
#include "modbusregister.h"

//#include "hardwaresettingsdialog.h"

/*
 * базовый класс аппаратного девайса
 * уже добавлено понятие модбаса, адреса устройства
 * методы для работы с устройством
 * все аппаратные штуки должны наследоваться от него
 */

class Hardware : public Module
{
    Q_OBJECT

public:
    Hardware(QObject *parent = 0, QString n = "HardwareModule");

    QString name;

    static void setMbPort(modbus_t *port);

    void setMbAddr(int addr);
    int getMbAddr();
    quint16 readReg(int regAddr);
    void readReg(ModbusRegister& reg);
    void writeReg(int regAddr, quint16 data);
    void writeReg(ModbusRegister& reg);
    void settings();

    virtual bool refresh() = 0;
    virtual bool isEvent() = 0;
    virtual void generateXml(QTextStream &out);

protected:
    static modbus_t *mbPort_;
    int readRegisters(int regAddr, int cont, quint16* data);

    int mbAddr_;

private:




};

#endif // HARDWARE_H
