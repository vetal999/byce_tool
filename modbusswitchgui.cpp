#include "modbusswitchgui.h"

ModbusSwitchGui::ModbusSwitchGui(QString nameModule, int IdModule, QWidget *parent) :
    ModuleGui(nameModule, IdModule, parent)
{
    modbusSwitchOutState = false;
    onSocket_ = false;
    offSocket_ = false;

    nameDev = new QLabel(this);
    nameDev->setText(name);
    nameDev->show();

    mainButton = new QPushButton(this);
    mainButton->move(0, 25);
    mainButton->resize(100, 100);
    changeButtonIcon();
    mainButton->setIconSize(QSize(100, 100));
    mainButton->show();
    connect(mainButton, SIGNAL(clicked()), this, SLOT(mainButtonClick()));

    dInStateButton = new QRadioButton(this);
    dInStateButton->move(25, 125);
    dInStateButton->resize(25, 25);
    //dInStateButton->setDisabled(true);
    dInStateButton->show();

    // кнопка с настройками
    settingsButton = new QPushButton(this);
    settingsButton->move(0, 125);
    settingsButton->resize(25, 25);
    settingsButton->setText(QString::fromLocal8Bit("..."));
    settingsButton->show();
   // connect(settingsButton, SIGNAL(clicked()), this, SLOT(settingsButtonClick()));

    adcDataLable = new QLabel(this);
    adcDataLable->move(50, 125);
    adcDataLable->resize(30, 25);
    adcDataLable->setAlignment(Qt::AlignRight);
    adcDataLable->setText("0");
    adcDataLable->show();

    this->resize(100, 150);
}

/*
bool ModbusSwitchGui::getState()
{
    return eSwitchOutState;
}

*/
void ModbusSwitchGui::mainButtonClick(void)
{
    if (modbusSwitchOutState) {
        modbusSwitchOutState = false;
        offSocket_ = true;
    }
    else {
        modbusSwitchOutState = true;
        onSocket_ = true;
    }

    changeButtonIcon();

    emit event();
}

void ModbusSwitchGui::changeButtonIcon(void)
{
    if (modbusSwitchOutState) {
        mainButton->setIcon(QIcon(":/img/lampOn.png"));
    }
    else {
        mainButton->setIcon(QIcon(":/img/lampOff.png"));
    }
}

void ModbusSwitchGui::parseXml(QDomElement &domElement)
{
    QString tagName;

    QDomNode n = domElement.firstChild();
    while(!n.isNull()) {
        QDomElement e = n.toElement(); // пробуем преобразовать узел в элемент.
        if(!e.isNull()) {
            tagName = e.tagName(); // узел действительно является элементом.
            if (tagName == "outState") {
                modbusSwitchOutState = (e.text().toInt()) ? true : false;
            }
            if (tagName == "dinState") {
                dinState_ = (e.text().toInt()) ? true : false;
            }
            if (tagName == "adcData") {
                adcData_ = e.text().toInt();
            }
            if (tagName == "raiseEvent") {
                if (e.text().toInt())
                    emit eventForGui(idModule, tagName, e.text());
            }
            if (tagName == "fallEvent") {
                if (e.text().toInt())
                    emit eventForGui(idModule, tagName, e.text());
            }

        }
        n = n.nextSibling();
    }
    refresh();
}

void ModbusSwitchGui::refresh()
{
    changeButtonIcon();
    dInStateButton->setChecked(dinState_);
    adcDataLable->setText(QString::number(adcData_));
}

void ModbusSwitchGui::generateXml(QTextStream &out)
{
    out << "<modbusSwitchGui id=\"" << idModule <<"\">\n";
    out << "<idModule>"     << idModule         << "</idModule>\n";
    out << "<name>"         << name             << "</name>\n";
    out << "<onSocket>"     << onSocket_        << "</onSocket>\n";
    out << "<offSocket>"    << offSocket_       << "</offSocket>\n";
    out << "</modbusSwitchGui>\n";

    onSocket_ = false;
    offSocket_ = false;
}

bool ModbusSwitchGui::isEvent()
{
    return (onSocket_ || offSocket_);
}

void ModbusSwitchGui::socket(QString socket, QString dataSocket)
{
    if (socket == "onSocket") {
        if (dataSocket.toInt()) {
            modbusSwitchOutState = true;
            onSocket_ = true;
        }
    }
    if (socket == "offSocket") {
        if (dataSocket.toInt()) {
            modbusSwitchOutState = false;
            offSocket_ = true;
        }
    }

    refresh();
}

QStringList ModbusSwitchGui::getListEvents()
{
    QStringList list;
    list.append("raiseEvent");
    list.append("fallEvent");
    list.append("adcData");

    return list;
}

QStringList ModbusSwitchGui::getListSockets()
{
    QStringList list;
    list.append("onSocket");
    list.append("offSocket");

    return list;
}
