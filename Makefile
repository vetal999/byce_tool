#############################################################################
# Makefile for building: BYCE_tool
# Generated by qmake (2.01a) (Qt 4.8.3) on: ?? ???? 5 20:46:02 2013
# Project:  BYCE_tool.pro
# Template: app
# Command: /usr/bin/qmake -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile BYCE_tool.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I3rdparty/libmodbus -I3rdparty/qModMaster -I/include -I/include/QtAddOnSerialPort -I/usr/include/qt4/QtAddOnSerialPort -I. -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib/i386-linux-gnu -ludev -L/src/serialport -lSerialPort -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		windowoptions.cpp \
		3rdparty/libmodbus/modbus-tcp.c \
		3rdparty/libmodbus/modbus-rtu.c \
		3rdparty/libmodbus/modbus-data.c \
		3rdparty/libmodbus/modbus.c \
		3rdparty/qModMaster/rawdatamodel.cpp \
		3rdparty/qModMaster/rawdatadelegate.cpp \
		3rdparty/qModMaster/modbusadapter.cpp \
		3rdparty/qModMaster/busmonitor.cpp \
		3rdparty/qModMaster/registersmodel.cpp \
		3rdparty/qModMaster/eutils.cpp \
		eswitchwindow.cpp moc_mainwindow.cpp \
		moc_windowoptions.cpp \
		moc_rawdatamodel.cpp \
		moc_rawdatadelegate.cpp \
		moc_modbusadapter.cpp \
		moc_busmonitor.cpp \
		moc_registersmodel.cpp \
		moc_eswitchwindow.cpp \
		qrc_qModMaster.cpp
OBJECTS       = main.o \
		mainwindow.o \
		windowoptions.o \
		modbus-tcp.o \
		modbus-rtu.o \
		modbus-data.o \
		modbus.o \
		rawdatamodel.o \
		rawdatadelegate.o \
		modbusadapter.o \
		busmonitor.o \
		registersmodel.o \
		eutils.o \
		eswitchwindow.o \
		moc_mainwindow.o \
		moc_windowoptions.o \
		moc_rawdatamodel.o \
		moc_rawdatadelegate.o \
		moc_modbusadapter.o \
		moc_busmonitor.o \
		moc_registersmodel.o \
		moc_eswitchwindow.o \
		qrc_qModMaster.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/serialport.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		BYCE_tool.pro
QMAKE_TARGET  = BYCE_tool
DESTDIR       = 
TARGET        = BYCE_tool

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h ui_windowoptions.h ui_busmonitor.h ui_eswitchwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: BYCE_tool.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/serialport.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/i386-linux-gnu/libSerialPort.prl \
		/usr/lib/i386-linux-gnu/libQtGui.prl \
		/usr/lib/i386-linux-gnu/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile BYCE_tool.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/serialport.prf:
/usr/share/qt4/mkspecs/features/declarative_debug.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/i386-linux-gnu/libSerialPort.prl:
/usr/lib/i386-linux-gnu/libQtGui.prl:
/usr/lib/i386-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile BYCE_tool.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/BYCE_tool1.0.0 || $(MKDIR) .tmp/BYCE_tool1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/BYCE_tool1.0.0/ && $(COPY_FILE) --parents mainwindow.h windowoptions.h 3rdparty/libmodbus/modbus-version.h 3rdparty/libmodbus/modbus-tcp-private.h 3rdparty/libmodbus/modbus-tcp.h 3rdparty/libmodbus/modbus-rtu-private.h 3rdparty/libmodbus/modbus-rtu.h 3rdparty/libmodbus/modbus-private.h 3rdparty/libmodbus/modbus.h 3rdparty/libmodbus/config.h 3rdparty/qModMaster/rawdatamodel.h 3rdparty/qModMaster/rawdatadelegate.h 3rdparty/qModMaster/modbusadapter.h 3rdparty/qModMaster/busmonitor.h 3rdparty/qModMaster/registersmodel.h 3rdparty/qModMaster/eutils.h eswitchwindow.h .tmp/BYCE_tool1.0.0/ && $(COPY_FILE) --parents data/qModMaster.qrc .tmp/BYCE_tool1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp windowoptions.cpp 3rdparty/libmodbus/modbus-tcp.c 3rdparty/libmodbus/modbus-rtu.c 3rdparty/libmodbus/modbus-data.c 3rdparty/libmodbus/modbus.c 3rdparty/qModMaster/rawdatamodel.cpp 3rdparty/qModMaster/rawdatadelegate.cpp 3rdparty/qModMaster/modbusadapter.cpp 3rdparty/qModMaster/busmonitor.cpp 3rdparty/qModMaster/registersmodel.cpp 3rdparty/qModMaster/eutils.cpp eswitchwindow.cpp .tmp/BYCE_tool1.0.0/ && $(COPY_FILE) --parents mainwindow.ui windowoptions.ui 3rdparty/qModMaster/busmonitor.ui eswitchwindow.ui .tmp/BYCE_tool1.0.0/ && (cd `dirname .tmp/BYCE_tool1.0.0` && $(TAR) BYCE_tool1.0.0.tar BYCE_tool1.0.0 && $(COMPRESS) BYCE_tool1.0.0.tar) && $(MOVE) `dirname .tmp/BYCE_tool1.0.0`/BYCE_tool1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/BYCE_tool1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_windowoptions.cpp moc_rawdatamodel.cpp moc_rawdatadelegate.cpp moc_modbusadapter.cpp moc_busmonitor.cpp moc_registersmodel.cpp moc_eswitchwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_windowoptions.cpp moc_rawdatamodel.cpp moc_rawdatadelegate.cpp moc_modbusadapter.cpp moc_busmonitor.cpp moc_registersmodel.cpp moc_eswitchwindow.cpp
moc_mainwindow.cpp: windowoptions.h \
		eswitchwindow.h \
		mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_windowoptions.cpp: windowoptions.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) windowoptions.h -o moc_windowoptions.cpp

moc_rawdatamodel.cpp: 3rdparty/qModMaster/rawdatamodel.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) 3rdparty/qModMaster/rawdatamodel.h -o moc_rawdatamodel.cpp

moc_rawdatadelegate.cpp: 3rdparty/qModMaster/rawdatadelegate.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) 3rdparty/qModMaster/rawdatadelegate.h -o moc_rawdatadelegate.cpp

moc_modbusadapter.cpp: 3rdparty/qModMaster/registersmodel.h \
		3rdparty/qModMaster/rawdatamodel.h \
		3rdparty/qModMaster/eutils.h \
		3rdparty/qModMaster/modbusadapter.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) 3rdparty/qModMaster/modbusadapter.h -o moc_modbusadapter.cpp

moc_busmonitor.cpp: 3rdparty/qModMaster/rawdatamodel.h \
		3rdparty/qModMaster/busmonitor.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) 3rdparty/qModMaster/busmonitor.h -o moc_busmonitor.cpp

moc_registersmodel.cpp: 3rdparty/qModMaster/registersmodel.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) 3rdparty/qModMaster/registersmodel.h -o moc_registersmodel.cpp

moc_eswitchwindow.cpp: eswitchwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) eswitchwindow.h -o moc_eswitchwindow.cpp

compiler_rcc_make_all: qrc_qModMaster.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qModMaster.cpp
qrc_qModMaster.cpp: data/qModMaster.qrc \
		data/view-16.png \
		data/remove-16.png \
		data/close16.png \
		data/refresh-16.png \
		data/options-16.png \
		data/edit-16.png \
		data/info16.png \
		data/add-16.png \
		data/pause-16.png \
		data/connect-16.png \
		data/network-16.png \
		data/save-16.png \
		data/run-16.png \
		data/stop-16.png
	/usr/bin/rcc -name qModMaster data/qModMaster.qrc -o qrc_qModMaster.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h ui_windowoptions.h ui_busmonitor.h ui_eswitchwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h ui_windowoptions.h ui_busmonitor.h ui_eswitchwindow.h
ui_mainwindow.h: mainwindow.ui
	/usr/bin/uic-qt4 mainwindow.ui -o ui_mainwindow.h

ui_windowoptions.h: windowoptions.ui
	/usr/bin/uic-qt4 windowoptions.ui -o ui_windowoptions.h

ui_busmonitor.h: 3rdparty/qModMaster/busmonitor.ui
	/usr/bin/uic-qt4 3rdparty/qModMaster/busmonitor.ui -o ui_busmonitor.h

ui_eswitchwindow.h: eswitchwindow.ui
	/usr/bin/uic-qt4 eswitchwindow.ui -o ui_eswitchwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		windowoptions.h \
		eswitchwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		windowoptions.h \
		eswitchwindow.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

windowoptions.o: windowoptions.cpp windowoptions.h \
		ui_windowoptions.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o windowoptions.o windowoptions.cpp

modbus-tcp.o: 3rdparty/libmodbus/modbus-tcp.c 3rdparty/libmodbus/modbus-private.h \
		3rdparty/libmodbus/config.h \
		3rdparty/libmodbus/modbus.h \
		3rdparty/libmodbus/modbus-version.h \
		3rdparty/libmodbus/modbus-tcp.h \
		3rdparty/libmodbus/modbus-rtu.h \
		3rdparty/libmodbus/modbus-tcp-private.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o modbus-tcp.o 3rdparty/libmodbus/modbus-tcp.c

modbus-rtu.o: 3rdparty/libmodbus/modbus-rtu.c 3rdparty/libmodbus/modbus-private.h \
		3rdparty/libmodbus/config.h \
		3rdparty/libmodbus/modbus.h \
		3rdparty/libmodbus/modbus-version.h \
		3rdparty/libmodbus/modbus-tcp.h \
		3rdparty/libmodbus/modbus-rtu.h \
		3rdparty/libmodbus/modbus-rtu-private.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o modbus-rtu.o 3rdparty/libmodbus/modbus-rtu.c

modbus-data.o: 3rdparty/libmodbus/modbus-data.c 3rdparty/libmodbus/modbus.h \
		3rdparty/libmodbus/modbus-version.h \
		3rdparty/libmodbus/modbus-tcp.h \
		3rdparty/libmodbus/modbus-rtu.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o modbus-data.o 3rdparty/libmodbus/modbus-data.c

modbus.o: 3rdparty/libmodbus/modbus.c 3rdparty/libmodbus/config.h \
		3rdparty/libmodbus/modbus.h \
		3rdparty/libmodbus/modbus-version.h \
		3rdparty/libmodbus/modbus-tcp.h \
		3rdparty/libmodbus/modbus-rtu.h \
		3rdparty/libmodbus/modbus-private.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o modbus.o 3rdparty/libmodbus/modbus.c

rawdatamodel.o: 3rdparty/qModMaster/rawdatamodel.cpp 3rdparty/qModMaster/rawdatamodel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o rawdatamodel.o 3rdparty/qModMaster/rawdatamodel.cpp

rawdatadelegate.o: 3rdparty/qModMaster/rawdatadelegate.cpp 3rdparty/qModMaster/rawdatadelegate.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o rawdatadelegate.o 3rdparty/qModMaster/rawdatadelegate.cpp

modbusadapter.o: 3rdparty/qModMaster/modbusadapter.cpp 3rdparty/qModMaster/modbusadapter.h \
		3rdparty/qModMaster/registersmodel.h \
		3rdparty/qModMaster/rawdatamodel.h \
		3rdparty/qModMaster/eutils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o modbusadapter.o 3rdparty/qModMaster/modbusadapter.cpp

busmonitor.o: 3rdparty/qModMaster/busmonitor.cpp 3rdparty/qModMaster/busmonitor.h \
		3rdparty/qModMaster/rawdatamodel.h \
		ui_busmonitor.h \
		3rdparty/qModMaster/rawdatadelegate.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o busmonitor.o 3rdparty/qModMaster/busmonitor.cpp

registersmodel.o: 3rdparty/qModMaster/registersmodel.cpp 3rdparty/qModMaster/registersmodel.h \
		3rdparty/qModMaster/eutils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o registersmodel.o 3rdparty/qModMaster/registersmodel.cpp

eutils.o: 3rdparty/qModMaster/eutils.cpp 3rdparty/qModMaster/eutils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o eutils.o 3rdparty/qModMaster/eutils.cpp

eswitchwindow.o: eswitchwindow.cpp eswitchwindow.h \
		ui_eswitchwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o eswitchwindow.o eswitchwindow.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_windowoptions.o: moc_windowoptions.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_windowoptions.o moc_windowoptions.cpp

moc_rawdatamodel.o: moc_rawdatamodel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_rawdatamodel.o moc_rawdatamodel.cpp

moc_rawdatadelegate.o: moc_rawdatadelegate.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_rawdatadelegate.o moc_rawdatadelegate.cpp

moc_modbusadapter.o: moc_modbusadapter.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_modbusadapter.o moc_modbusadapter.cpp

moc_busmonitor.o: moc_busmonitor.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_busmonitor.o moc_busmonitor.cpp

moc_registersmodel.o: moc_registersmodel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_registersmodel.o moc_registersmodel.cpp

moc_eswitchwindow.o: moc_eswitchwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_eswitchwindow.o moc_eswitchwindow.cpp

qrc_qModMaster.o: qrc_qModMaster.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_qModMaster.o qrc_qModMaster.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

