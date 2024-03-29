#############################################################################
# Makefile for building: harbour-sailyfish
# Generated by qmake (3.0) (Qt 5.1.0) on: Sat Feb 7 14:30:28 2015
# Project:  harbour-sailyfish.pro
# Template: app
# Command: /usr/lib/qt5/bin/qmake QMAKE_CFLAGS_RELEASE=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CFLAGS_DEBUG=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CXXFLAGS_RELEASE=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CXXFLAGS_DEBUG=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_STRIP=: PREFIX=/usr -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile harbour-sailyfish.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_QML_DEBUG -DQT_DECLARATIVE_DEBUG -DQT_QUICK_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -Wformat -Wformat-security -fmessage-length=0 -march=armv7-a -mfloat-abi=hard -mfpu=vfpv3-d16 -mno-thumb -Wno-psabi -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -Wformat -Wformat-security -fmessage-length=0 -march=armv7-a -mfloat-abi=hard -mfpu=vfpv3-d16 -mno-thumb -Wno-psabi -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/usr/share/qt5/mkspecs/linux-g++ -I. -I/usr/include/sailfishapp -I/usr/include/mdeclarativecache5 -I/usr/include/qt5 -I/usr/include/qt5/QtQuick -I/usr/include/qt5/QtQml -I/usr/include/qt5/QtNetwork -I/usr/include/qt5/QtGui -I/usr/include/qt5/QtCore -I.
LINK          = g++
LFLAGS        = -Wl,-rpath,/usr/share/harbour-sailyfish/lib
LIBS          = $(SUBLIBS) -pie -rdynamic -L/usr/lib/ -lsailfishapp -lmdeclarativecache5 -L/usr/lib -lQt5Quick -lQt5Qml -lQt5Network -lQt5Gui -lQt5Core -lGLESv2 -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/qt5/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = :
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

SOURCES       = src/harbour-sailyfish.cpp 
OBJECTS       = harbour-sailyfish.o
DIST          = /usr/share/qt5/mkspecs/features/spec_pre.prf \
		/usr/share/qt5/mkspecs/common/shell-unix.conf \
		/usr/share/qt5/mkspecs/common/unix.conf \
		/usr/share/qt5/mkspecs/common/linux.conf \
		/usr/share/qt5/mkspecs/common/gcc-base.conf \
		/usr/share/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt5/mkspecs/common/g++-base.conf \
		/usr/share/qt5/mkspecs/common/g++-unix.conf \
		/usr/share/qt5/mkspecs/qconfig.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_compositor.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_contacts.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_declarative.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_docgallery.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_feedback.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_location.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_organizer.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_platformsupport.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_publishsubscribe.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_quickparticles.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_sensors.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_serviceframework.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_versit.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_versitorganizer.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/share/qt5/mkspecs/features/qt_functions.prf \
		/usr/share/qt5/mkspecs/features/qt_config.prf \
		/usr/share/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/share/qt5/mkspecs/features/spec_post.prf \
		/usr/share/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt5/mkspecs/features/default_pre.prf \
		/usr/share/qt5/mkspecs/features/unix/default_pre.prf \
		/usr/share/qt5/mkspecs/features/resolve_config.prf \
		/usr/share/qt5/mkspecs/features/default_post.prf \
		/usr/share/qt5/mkspecs/features/sailfishapp.prf \
		/usr/share/qt5/mkspecs/features/link_pkgconfig.prf \
		/usr/share/qt5/mkspecs/features/qml_debug.prf \
		/usr/share/qt5/mkspecs/features/declarative_debug.prf \
		/usr/share/qt5/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt5/mkspecs/features/warn_on.prf \
		/usr/share/qt5/mkspecs/features/qt.prf \
		/usr/share/qt5/mkspecs/features/resources.prf \
		/usr/share/qt5/mkspecs/features/moc.prf \
		/usr/share/qt5/mkspecs/features/unix/opengl.prf \
		/usr/share/qt5/mkspecs/features/unix/thread.prf \
		/usr/share/qt5/mkspecs/features/wayland-scanner.prf \
		/usr/share/qt5/mkspecs/features/testcase_targets.prf \
		/usr/share/qt5/mkspecs/features/exceptions.prf \
		/usr/share/qt5/mkspecs/features/yacc.prf \
		/usr/share/qt5/mkspecs/features/lex.prf \
		harbour-sailyfish.pro \
		harbour-sailyfish.pro
QMAKE_TARGET  = harbour-sailyfish
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = harbour-sailyfish


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

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: harbour-sailyfish.pro /usr/share/qt5/mkspecs/linux-g++/qmake.conf /usr/share/qt5/mkspecs/features/spec_pre.prf \
		/usr/share/qt5/mkspecs/common/shell-unix.conf \
		/usr/share/qt5/mkspecs/common/unix.conf \
		/usr/share/qt5/mkspecs/common/linux.conf \
		/usr/share/qt5/mkspecs/common/gcc-base.conf \
		/usr/share/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt5/mkspecs/common/g++-base.conf \
		/usr/share/qt5/mkspecs/common/g++-unix.conf \
		/usr/share/qt5/mkspecs/qconfig.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_compositor.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_contacts.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_declarative.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_docgallery.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_feedback.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_location.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_organizer.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_platformsupport.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_publishsubscribe.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_quickparticles.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_sensors.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_serviceframework.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_svg.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_versit.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_versitorganizer.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_webkit.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/share/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/share/qt5/mkspecs/features/qt_functions.prf \
		/usr/share/qt5/mkspecs/features/qt_config.prf \
		/usr/share/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/share/qt5/mkspecs/features/spec_post.prf \
		/usr/share/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt5/mkspecs/features/default_pre.prf \
		/usr/share/qt5/mkspecs/features/unix/default_pre.prf \
		/usr/share/qt5/mkspecs/features/resolve_config.prf \
		/usr/share/qt5/mkspecs/features/default_post.prf \
		/usr/share/qt5/mkspecs/features/sailfishapp.prf \
		/usr/share/qt5/mkspecs/features/link_pkgconfig.prf \
		/usr/share/qt5/mkspecs/features/qml_debug.prf \
		/usr/share/qt5/mkspecs/features/declarative_debug.prf \
		/usr/share/qt5/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt5/mkspecs/features/warn_on.prf \
		/usr/share/qt5/mkspecs/features/qt.prf \
		/usr/share/qt5/mkspecs/features/resources.prf \
		/usr/share/qt5/mkspecs/features/moc.prf \
		/usr/share/qt5/mkspecs/features/unix/opengl.prf \
		/usr/share/qt5/mkspecs/features/unix/thread.prf \
		/usr/share/qt5/mkspecs/features/wayland-scanner.prf \
		/usr/share/qt5/mkspecs/features/testcase_targets.prf \
		/usr/share/qt5/mkspecs/features/exceptions.prf \
		/usr/share/qt5/mkspecs/features/yacc.prf \
		/usr/share/qt5/mkspecs/features/lex.prf \
		harbour-sailyfish.pro \
		/usr/lib/libQt5Quick.prl \
		/usr/lib/libQt5Qml.prl \
		/usr/lib/libQt5Network.prl \
		/usr/lib/libQt5Gui.prl \
		/usr/lib/libQt5Core.prl
	$(QMAKE) QMAKE_CFLAGS_RELEASE=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CFLAGS_DEBUG=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CXXFLAGS_RELEASE=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CXXFLAGS_DEBUG=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_STRIP=: PREFIX=/usr -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile harbour-sailyfish.pro
/usr/share/qt5/mkspecs/features/spec_pre.prf:
/usr/share/qt5/mkspecs/common/shell-unix.conf:
/usr/share/qt5/mkspecs/common/unix.conf:
/usr/share/qt5/mkspecs/common/linux.conf:
/usr/share/qt5/mkspecs/common/gcc-base.conf:
/usr/share/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt5/mkspecs/common/g++-base.conf:
/usr/share/qt5/mkspecs/common/g++-unix.conf:
/usr/share/qt5/mkspecs/qconfig.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_bluetooth.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_compositor.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_contacts.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_declarative.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_docgallery.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_feedback.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_location.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_organizer.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_platformsupport.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_positioning.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_publishsubscribe.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_quickparticles.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_script.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_sensors.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_serviceframework.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_svg.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_versit.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_versitorganizer.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_webkit.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/share/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri:
/usr/share/qt5/mkspecs/features/qt_functions.prf:
/usr/share/qt5/mkspecs/features/qt_config.prf:
/usr/share/qt5/mkspecs/linux-g++/qmake.conf:
/usr/share/qt5/mkspecs/features/spec_post.prf:
/usr/share/qt5/mkspecs/features/exclusive_builds.prf:
/usr/share/qt5/mkspecs/features/default_pre.prf:
/usr/share/qt5/mkspecs/features/unix/default_pre.prf:
/usr/share/qt5/mkspecs/features/resolve_config.prf:
/usr/share/qt5/mkspecs/features/default_post.prf:
/usr/share/qt5/mkspecs/features/sailfishapp.prf:
/usr/share/qt5/mkspecs/features/link_pkgconfig.prf:
/usr/share/qt5/mkspecs/features/qml_debug.prf:
/usr/share/qt5/mkspecs/features/declarative_debug.prf:
/usr/share/qt5/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt5/mkspecs/features/warn_on.prf:
/usr/share/qt5/mkspecs/features/qt.prf:
/usr/share/qt5/mkspecs/features/resources.prf:
/usr/share/qt5/mkspecs/features/moc.prf:
/usr/share/qt5/mkspecs/features/unix/opengl.prf:
/usr/share/qt5/mkspecs/features/unix/thread.prf:
/usr/share/qt5/mkspecs/features/wayland-scanner.prf:
/usr/share/qt5/mkspecs/features/testcase_targets.prf:
/usr/share/qt5/mkspecs/features/exceptions.prf:
/usr/share/qt5/mkspecs/features/yacc.prf:
/usr/share/qt5/mkspecs/features/lex.prf:
harbour-sailyfish.pro:
/usr/lib/libQt5Quick.prl:
/usr/lib/libQt5Qml.prl:
/usr/lib/libQt5Network.prl:
/usr/lib/libQt5Gui.prl:
/usr/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) QMAKE_CFLAGS_RELEASE=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CFLAGS_DEBUG=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CXXFLAGS_RELEASE=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_CXXFLAGS_DEBUG=-O2\ -g\ -pipe\ -Wall\ -Wp,-D_FORTIFY_SOURCE=2\ -fexceptions\ -fstack-protector\ --param=ssp-buffer-size=4\ -Wformat\ -Wformat-security\ -fmessage-length=0\ -march=armv7-a\ -mfloat-abi=hard\ -mfpu=vfpv3-d16\ -mno-thumb\ -Wno-psabi QMAKE_STRIP=: PREFIX=/usr -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile harbour-sailyfish.pro

qmake_all: FORCE

dist: 
	@test -d .tmp/harbour-sailyfish1.0.0 || mkdir -p .tmp/harbour-sailyfish1.0.0
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/harbour-sailyfish1.0.0/ && $(COPY_FILE) --parents src/harbour-sailyfish.cpp .tmp/harbour-sailyfish1.0.0/ && (cd `dirname .tmp/harbour-sailyfish1.0.0` && $(TAR) harbour-sailyfish1.0.0.tar harbour-sailyfish1.0.0 && $(COMPRESS) harbour-sailyfish1.0.0.tar) && $(MOVE) `dirname .tmp/harbour-sailyfish1.0.0`/harbour-sailyfish1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/harbour-sailyfish1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_wayland-server-header_make_all:
compiler_wayland-server-header_clean:
compiler_wayland-client-header_make_all:
compiler_wayland-client-header_clean:
compiler_qtwayland-client-header_make_all:
compiler_qtwayland-client-header_clean:
compiler_qtwayland-server-header_make_all:
compiler_qtwayland-server-header_clean:
compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_wayland-code_make_all:
compiler_wayland-code_clean:
compiler_qtwayland-client-code_make_all:
compiler_qtwayland-client-code_clean:
compiler_qtwayland-server-code_make_all:
compiler_qtwayland-server-code_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

harbour-sailyfish.o: src/harbour-sailyfish.cpp /usr/include/qt5/QtQuick/QtQuick \
		/usr/include/qt5/QtQuick/QtQuickDepends \
		/usr/include/qt5/QtCore/QtCore \
		/usr/include/qt5/QtCore/QtCoreDepends \
		/usr/include/qt5/QtCore/qabstractanimation.h \
		/usr/include/qt5/QtCore/qobject.h \
		/usr/include/qt5/QtCore/qobjectdefs.h \
		/usr/include/qt5/QtCore/qnamespace.h \
		/usr/include/qt5/QtCore/qglobal.h \
		/usr/include/qt5/QtCore/qconfig.h \
		/usr/include/qt5/QtCore/qfeatures.h \
		/usr/include/qt5/QtCore/qsystemdetection.h \
		/usr/include/qt5/QtCore/qcompilerdetection.h \
		/usr/include/qt5/QtCore/qprocessordetection.h \
		/usr/include/qt5/QtCore/qglobalstatic.h \
		/usr/include/qt5/QtCore/qatomic.h \
		/usr/include/qt5/QtCore/qbasicatomic.h \
		/usr/include/qt5/QtCore/qatomic_bootstrap.h \
		/usr/include/qt5/QtCore/qgenericatomic.h \
		/usr/include/qt5/QtCore/qatomic_msvc.h \
		/usr/include/qt5/QtCore/qatomic_integrity.h \
		/usr/include/qt5/QtCore/qoldbasicatomic.h \
		/usr/include/qt5/QtCore/qatomic_vxworks.h \
		/usr/include/qt5/QtCore/qatomic_power.h \
		/usr/include/qt5/QtCore/qatomic_alpha.h \
		/usr/include/qt5/QtCore/qatomic_armv7.h \
		/usr/include/qt5/QtCore/qatomic_armv6.h \
		/usr/include/qt5/QtCore/qatomic_armv5.h \
		/usr/include/qt5/QtCore/qatomic_bfin.h \
		/usr/include/qt5/QtCore/qatomic_ia64.h \
		/usr/include/qt5/QtCore/qatomic_mips.h \
		/usr/include/qt5/QtCore/qatomic_s390.h \
		/usr/include/qt5/QtCore/qatomic_sh4a.h \
		/usr/include/qt5/QtCore/qatomic_sparc.h \
		/usr/include/qt5/QtCore/qatomic_x86.h \
		/usr/include/qt5/QtCore/qatomic_cxx11.h \
		/usr/include/qt5/QtCore/qatomic_gcc.h \
		/usr/include/qt5/QtCore/qatomic_unix.h \
		/usr/include/qt5/QtCore/qmutex.h \
		/usr/include/qt5/QtCore/qlogging.h \
		/usr/include/qt5/QtCore/qflags.h \
		/usr/include/qt5/QtCore/qtypeinfo.h \
		/usr/include/qt5/QtCore/qtypetraits.h \
		/usr/include/qt5/QtCore/qsysinfo.h \
		/usr/include/qt5/QtCore/qobjectdefs_impl.h \
		/usr/include/qt5/QtCore/qstring.h \
		/usr/include/qt5/QtCore/qchar.h \
		/usr/include/qt5/QtCore/qbytearray.h \
		/usr/include/qt5/QtCore/qrefcount.h \
		/usr/include/qt5/QtCore/qarraydata.h \
		/usr/include/qt5/QtCore/qstringbuilder.h \
		/usr/include/qt5/QtCore/qlist.h \
		/usr/include/qt5/QtCore/qalgorithms.h \
		/usr/include/qt5/QtCore/qiterator.h \
		/usr/include/qt5/QtCore/qcoreevent.h \
		/usr/include/qt5/QtCore/qscopedpointer.h \
		/usr/include/qt5/QtCore/qmetatype.h \
		/usr/include/qt5/QtCore/qvarlengtharray.h \
		/usr/include/qt5/QtCore/qcontainerfwd.h \
		/usr/include/qt5/QtCore/qisenum.h \
		/usr/include/qt5/QtCore/qobject_impl.h \
		/usr/include/qt5/QtCore/qanimationgroup.h \
		/usr/include/qt5/QtCore/qparallelanimationgroup.h \
		/usr/include/qt5/QtCore/qpauseanimation.h \
		/usr/include/qt5/QtCore/qpropertyanimation.h \
		/usr/include/qt5/QtCore/qvariantanimation.h \
		/usr/include/qt5/QtCore/qeasingcurve.h \
		/usr/include/qt5/QtCore/qvector.h \
		/usr/include/qt5/QtCore/qpoint.h \
		/usr/include/qt5/QtCore/qvariant.h \
		/usr/include/qt5/QtCore/qmap.h \
		/usr/include/qt5/QtCore/qpair.h \
		/usr/include/qt5/QtCore/qdebug.h \
		/usr/include/qt5/QtCore/qhash.h \
		/usr/include/qt5/QtCore/qtextstream.h \
		/usr/include/qt5/QtCore/qiodevice.h \
		/usr/include/qt5/QtCore/qlocale.h \
		/usr/include/qt5/QtCore/qshareddata.h \
		/usr/include/qt5/QtCore/qset.h \
		/usr/include/qt5/QtCore/qcontiguouscache.h \
		/usr/include/qt5/QtCore/qsequentialanimationgroup.h \
		/usr/include/qt5/QtCore/qtextcodec.h \
		/usr/include/qt5/QtCore/qendian.h \
		/usr/include/qt5/QtCore/qlibraryinfo.h \
		/usr/include/qt5/QtCore/qdatetime.h \
		/usr/include/qt5/QtCore/qsharedpointer.h \
		/usr/include/qt5/QtCore/qsharedpointer_impl.h \
		/usr/include/qt5/QtCore/qnumeric.h \
		/usr/include/qt5/QtCore/qbuffer.h \
		/usr/include/qt5/QtCore/qdatastream.h \
		/usr/include/qt5/QtCore/qdir.h \
		/usr/include/qt5/QtCore/qfileinfo.h \
		/usr/include/qt5/QtCore/qfile.h \
		/usr/include/qt5/QtCore/qfiledevice.h \
		/usr/include/qt5/QtCore/qstringlist.h \
		/usr/include/qt5/QtCore/qregexp.h \
		/usr/include/qt5/QtCore/qstringmatcher.h \
		/usr/include/qt5/QtCore/qdiriterator.h \
		/usr/include/qt5/QtCore/qfilesystemwatcher.h \
		/usr/include/qt5/QtCore/qlockfile.h \
		/usr/include/qt5/QtCore/qprocess.h \
		/usr/include/qt5/QtCore/qresource.h \
		/usr/include/qt5/QtCore/qsavefile.h \
		/usr/include/qt5/QtCore/qsettings.h \
		/usr/include/qt5/QtCore/qstandardpaths.h \
		/usr/include/qt5/QtCore/qtemporarydir.h \
		/usr/include/qt5/QtCore/QScopedPointer \
		/usr/include/qt5/QtCore/qtemporaryfile.h \
		/usr/include/qt5/QtCore/qurl.h \
		/usr/include/qt5/QtCore/qurlquery.h \
		/usr/include/qt5/QtCore/qabstractitemmodel.h \
		/usr/include/qt5/QtCore/qabstractproxymodel.h \
		/usr/include/qt5/QtCore/qidentityproxymodel.h \
		/usr/include/qt5/QtCore/qitemselectionmodel.h \
		/usr/include/qt5/QtCore/qsortfilterproxymodel.h \
		/usr/include/qt5/QtCore/qstringlistmodel.h \
		/usr/include/qt5/QtCore/qjsonarray.h \
		/usr/include/qt5/QtCore/qjsonvalue.h \
		/usr/include/qt5/QtCore/qjsondocument.h \
		/usr/include/qt5/QtCore/qjsonobject.h \
		/usr/include/qt5/QtCore/qabstracteventdispatcher.h \
		/usr/include/qt5/QtCore/qeventloop.h \
		/usr/include/qt5/QtCore/qabstractnativeeventfilter.h \
		/usr/include/qt5/QtCore/qbasictimer.h \
		/usr/include/qt5/QtCore/qcoreapplication.h \
		/usr/include/qt5/QtCore/qmath.h \
		/usr/include/qt5/QtCore/qmetaobject.h \
		/usr/include/qt5/QtCore/qmimedata.h \
		/usr/include/qt5/QtCore/qobjectcleanuphandler.h \
		/usr/include/qt5/QtCore/qpointer.h \
		/usr/include/qt5/QtCore/qsharedmemory.h \
		/usr/include/qt5/QtCore/qsignalmapper.h \
		/usr/include/qt5/QtCore/qsocketnotifier.h \
		/usr/include/qt5/QtCore/qsystemsemaphore.h \
		/usr/include/qt5/QtCore/qtimer.h \
		/usr/include/qt5/QtCore/qtranslator.h \
		/usr/include/qt5/QtCore/qwineventnotifier.h \
		/usr/include/qt5/QtCore/qt_windows.h \
		/usr/include/qt5/QtCore/qmimedatabase.h \
		/usr/include/qt5/QtCore/qmimetype.h \
		/usr/include/qt5/QtCore/qfactoryinterface.h \
		/usr/include/qt5/QtCore/qlibrary.h \
		/usr/include/qt5/QtCore/qplugin.h \
		/usr/include/qt5/QtCore/qpluginloader.h \
		/usr/include/qt5/QtCore/quuid.h \
		/usr/include/qt5/QtCore/qabstractstate.h \
		/usr/include/qt5/QtCore/qabstracttransition.h \
		/usr/include/qt5/QtCore/qeventtransition.h \
		/usr/include/qt5/QtCore/qfinalstate.h \
		/usr/include/qt5/QtCore/qhistorystate.h \
		/usr/include/qt5/QtCore/qsignaltransition.h \
		/usr/include/qt5/QtCore/qstate.h \
		/usr/include/qt5/QtCore/qstatemachine.h \
		/usr/include/qt5/QtCore/qexception.h \
		/usr/include/qt5/QtCore/qfuture.h \
		/usr/include/qt5/QtCore/qfutureinterface.h \
		/usr/include/qt5/QtCore/qrunnable.h \
		/usr/include/qt5/QtCore/qresultstore.h \
		/usr/include/qt5/QtCore/qfuturesynchronizer.h \
		/usr/include/qt5/QtCore/qfuturewatcher.h \
		/usr/include/qt5/QtCore/qreadwritelock.h \
		/usr/include/qt5/QtCore/qsemaphore.h \
		/usr/include/qt5/QtCore/qthread.h \
		/usr/include/qt5/QtCore/qthreadpool.h \
		/usr/include/qt5/QtCore/qthreadstorage.h \
		/usr/include/qt5/QtCore/qwaitcondition.h \
		/usr/include/qt5/QtCore/qarraydataops.h \
		/usr/include/qt5/QtCore/qarraydatapointer.h \
		/usr/include/qt5/QtCore/qbitarray.h \
		/usr/include/qt5/QtCore/qbytearraymatcher.h \
		/usr/include/qt5/QtCore/qcache.h \
		/usr/include/qt5/QtCore/qcryptographichash.h \
		/usr/include/qt5/QtCore/qelapsedtimer.h \
		/usr/include/qt5/QtCore/qline.h \
		/usr/include/qt5/QtCore/qlinkedlist.h \
		/usr/include/qt5/QtCore/qmargins.h \
		/usr/include/qt5/QtCore/qrect.h \
		/usr/include/qt5/QtCore/qsize.h \
		/usr/include/qt5/QtCore/qmessageauthenticationcode.h \
		/usr/include/qt5/QtCore/qqueue.h \
		/usr/include/qt5/QtCore/qregularexpression.h \
		/usr/include/qt5/QtCore/qscopedvaluerollback.h \
		/usr/include/qt5/QtCore/qstack.h \
		/usr/include/qt5/QtCore/qtextboundaryfinder.h \
		/usr/include/qt5/QtCore/qtimeline.h \
		/usr/include/qt5/QtCore/qxmlstream.h \
		/usr/include/qt5/QtCore/qtcoreversion.h \
		/usr/include/qt5/QtGui/QtGui \
		/usr/include/qt5/QtGui/QtGuiDepends \
		/usr/include/qt5/QtGui/qaccessible.h \
		/usr/include/qt5/QtGui/qcolor.h \
		/usr/include/qt5/QtGui/qrgb.h \
		/usr/include/qt5/QtGui/qevent.h \
		/usr/include/qt5/QtGui/qwindowdefs.h \
		/usr/include/qt5/QtGui/qwindowdefs_win.h \
		/usr/include/qt5/QtGui/qregion.h \
		/usr/include/qt5/QtGui/qkeysequence.h \
		/usr/include/qt5/QtGui/qvector2d.h \
		/usr/include/qt5/QtGui/qtouchdevice.h \
		/usr/include/qt5/QtGui/qaccessiblebridge.h \
		/usr/include/qt5/QtGui/qaccessibleobject.h \
		/usr/include/qt5/QtGui/qaccessibleplugin.h \
		/usr/include/qt5/QtGui/qbitmap.h \
		/usr/include/qt5/QtGui/qpixmap.h \
		/usr/include/qt5/QtGui/qpaintdevice.h \
		/usr/include/qt5/QtGui/qimage.h \
		/usr/include/qt5/QtGui/qtransform.h \
		/usr/include/qt5/QtGui/qmatrix.h \
		/usr/include/qt5/QtGui/qpolygon.h \
		/usr/include/qt5/QtGui/qpainterpath.h \
		/usr/include/qt5/QtGui/qicon.h \
		/usr/include/qt5/QtGui/qiconengine.h \
		/usr/include/qt5/QtGui/qiconengineplugin.h \
		/usr/include/qt5/QtGui/qimageiohandler.h \
		/usr/include/qt5/QtGui/qimagereader.h \
		/usr/include/qt5/QtGui/qimagewriter.h \
		/usr/include/qt5/QtGui/qmovie.h \
		/usr/include/qt5/QtGui/qpicture.h \
		/usr/include/qt5/QtGui/qpictureformatplugin.h \
		/usr/include/qt5/QtGui/qpixmapcache.h \
		/usr/include/qt5/QtGui/qstandarditemmodel.h \
		/usr/include/qt5/QtGui/qbrush.h \
		/usr/include/qt5/QtGui/qfont.h \
		/usr/include/qt5/QtGui/qclipboard.h \
		/usr/include/qt5/QtGui/qcursor.h \
		/usr/include/qt5/QtGui/qdrag.h \
		/usr/include/qt5/QtGui/qgenericplugin.h \
		/usr/include/qt5/QtGui/qgenericpluginfactory.h \
		/usr/include/qt5/QtGui/qguiapplication.h \
		/usr/include/qt5/QtGui/qinputmethod.h \
		/usr/include/qt5/QtGui/qoffscreensurface.h \
		/usr/include/qt5/QtCore/QObject \
		/usr/include/qt5/QtGui/qsurface.h \
		/usr/include/qt5/QtGui/qsurfaceformat.h \
		/usr/include/qt5/QtGui/qopenglcontext.h \
		/usr/include/qt5/QtGui/QSurfaceFormat \
		/usr/include/qt5/QtGui/qopengl.h \
		/usr/include/qt5/QtGui/qopengles2ext.h \
		/usr/include/qt5/QtGui/qopenglext.h \
		/usr/include/qt5/QtGui/qopenglversionfunctions.h \
		/usr/include/qt5/QtGui/qpalette.h \
		/usr/include/qt5/QtGui/qscreen.h \
		/usr/include/qt5/QtCore/QList \
		/usr/include/qt5/QtCore/QRect \
		/usr/include/qt5/QtCore/QSize \
		/usr/include/qt5/QtCore/QSizeF \
		/usr/include/qt5/QtGui/QTransform \
		/usr/include/qt5/QtGui/qsessionmanager.h \
		/usr/include/qt5/QtGui/qstylehints.h \
		/usr/include/qt5/QtGui/qwindow.h \
		/usr/include/qt5/QtCore/QEvent \
		/usr/include/qt5/QtCore/QMargins \
		/usr/include/qt5/QtGui/qgenericmatrix.h \
		/usr/include/qt5/QtGui/qmatrix4x4.h \
		/usr/include/qt5/QtGui/qvector3d.h \
		/usr/include/qt5/QtGui/qvector4d.h \
		/usr/include/qt5/QtGui/qquaternion.h \
		/usr/include/qt5/QtGui/qopenglbuffer.h \
		/usr/include/qt5/QtGui/qopengldebug.h \
		/usr/include/qt5/QtGui/qopenglframebufferobject.h \
		/usr/include/qt5/QtGui/qopenglfunctions.h \
		/usr/include/qt5/QtGui/qopenglpaintdevice.h \
		/usr/include/qt5/QtGui/qopenglshaderprogram.h \
		/usr/include/qt5/QtGui/qopengltimerquery.h \
		/usr/include/qt5/QtGui/qopenglvertexarrayobject.h \
		/usr/include/qt5/QtGui/qbackingstore.h \
		/usr/include/qt5/QtGui/qpagedpaintdevice.h \
		/usr/include/qt5/QtGui/qpaintengine.h \
		/usr/include/qt5/QtGui/qpainter.h \
		/usr/include/qt5/QtGui/qtextoption.h \
		/usr/include/qt5/QtGui/qpen.h \
		/usr/include/qt5/QtGui/qfontinfo.h \
		/usr/include/qt5/QtGui/qfontmetrics.h \
		/usr/include/qt5/QtGui/qpdfwriter.h \
		/usr/include/qt5/QtGui/qabstracttextdocumentlayout.h \
		/usr/include/qt5/QtGui/qtextlayout.h \
		/usr/include/qt5/QtGui/qtextformat.h \
		/usr/include/qt5/QtGui/qglyphrun.h \
		/usr/include/qt5/QtGui/qrawfont.h \
		/usr/include/qt5/QtGui/qfontdatabase.h \
		/usr/include/qt5/QtGui/qtextcursor.h \
		/usr/include/qt5/QtGui/qtextdocument.h \
		/usr/include/qt5/QtGui/qstatictext.h \
		/usr/include/qt5/QtGui/qsyntaxhighlighter.h \
		/usr/include/qt5/QtGui/qtextobject.h \
		/usr/include/qt5/QtGui/qtextdocumentfragment.h \
		/usr/include/qt5/QtGui/qtextdocumentwriter.h \
		/usr/include/qt5/QtGui/qtextlist.h \
		/usr/include/qt5/QtGui/qtexttable.h \
		/usr/include/qt5/QtGui/qdesktopservices.h \
		/usr/include/qt5/QtGui/qvalidator.h \
		/usr/include/qt5/QtGui/qtguiversion.h \
		/usr/include/qt5/QtQml/QtQml \
		/usr/include/qt5/QtQml/QtQmlDepends \
		/usr/include/qt5/QtNetwork/QtNetwork \
		/usr/include/qt5/QtNetwork/QtNetworkDepends \
		/usr/include/qt5/QtNetwork/qabstractnetworkcache.h \
		/usr/include/qt5/QtNetwork/qnetworkrequest.h \
		/usr/include/qt5/QtCore/QSharedDataPointer \
		/usr/include/qt5/QtCore/QString \
		/usr/include/qt5/QtCore/QUrl \
		/usr/include/qt5/QtCore/QVariant \
		/usr/include/qt5/QtNetwork/qhttpmultipart.h \
		/usr/include/qt5/QtCore/QByteArray \
		/usr/include/qt5/QtCore/QIODevice \
		/usr/include/qt5/QtNetwork/QNetworkRequest \
		/usr/include/qt5/QtNetwork/qnetworkaccessmanager.h \
		/usr/include/qt5/QtNetwork/qnetworkcookie.h \
		/usr/include/qt5/QtCore/QMetaType \
		/usr/include/qt5/QtNetwork/qnetworkcookiejar.h \
		/usr/include/qt5/QtNetwork/qnetworkdiskcache.h \
		/usr/include/qt5/QtNetwork/qnetworkreply.h \
		/usr/include/qt5/QtNetwork/QNetworkAccessManager \
		/usr/include/qt5/QtNetwork/qnetworkconfigmanager.h \
		/usr/include/qt5/QtNetwork/qnetworkconfiguration.h \
		/usr/include/qt5/QtNetwork/qnetworksession.h \
		/usr/include/qt5/QtNetwork/qnetworkinterface.h \
		/usr/include/qt5/QtNetwork/qhostaddress.h \
		/usr/include/qt5/QtNetwork/qabstractsocket.h \
		/usr/include/qt5/QtNetwork/qauthenticator.h \
		/usr/include/qt5/QtNetwork/qdnslookup.h \
		/usr/include/qt5/QtNetwork/qhostinfo.h \
		/usr/include/qt5/QtNetwork/qnetworkproxy.h \
		/usr/include/qt5/QtNetwork/qlocalserver.h \
		/usr/include/qt5/QtNetwork/qlocalsocket.h \
		/usr/include/qt5/QtNetwork/qtcpserver.h \
		/usr/include/qt5/QtNetwork/qtcpsocket.h \
		/usr/include/qt5/QtNetwork/qudpsocket.h \
		/usr/include/qt5/QtNetwork/qssl.h \
		/usr/include/qt5/QtCore/QFlags \
		/usr/include/qt5/QtNetwork/qsslcertificate.h \
		/usr/include/qt5/QtNetwork/qsslcertificateextension.h \
		/usr/include/qt5/QtNetwork/qsslcipher.h \
		/usr/include/qt5/QtNetwork/qsslconfiguration.h \
		/usr/include/qt5/QtNetwork/qsslsocket.h \
		/usr/include/qt5/QtNetwork/qsslerror.h \
		/usr/include/qt5/QtNetwork/qsslkey.h \
		/usr/include/qt5/QtNetwork/qtnetworkversion.h \
		/usr/include/qt5/QtQml/qtqmlglobal.h \
		/usr/include/qt5/QtQml/qqmldebug.h \
		/usr/include/qt5/QtQml/qqml.h \
		/usr/include/qt5/QtQml/qqmlprivate.h \
		/usr/include/qt5/QtQml/qqmlparserstatus.h \
		/usr/include/qt5/QtQml/qqmlpropertyvaluesource.h \
		/usr/include/qt5/QtQml/qqmllist.h \
		/usr/include/qt5/QtQml/qqmlapplicationengine.h \
		/usr/include/qt5/QtQml/qqmlengine.h \
		/usr/include/qt5/QtQml/qjsengine.h \
		/usr/include/qt5/QtQml/qjsvalue.h \
		/usr/include/qt5/QtQml/qqmlerror.h \
		/usr/include/qt5/QtQml/qqmlcomponent.h \
		/usr/include/qt5/QtQml/qqmlcontext.h \
		/usr/include/qt5/QtQml/qqmlexpression.h \
		/usr/include/qt5/QtQml/qqmlscriptstring.h \
		/usr/include/qt5/QtQml/qqmlextensioninterface.h \
		/usr/include/qt5/QtQml/qqmlextensionplugin.h \
		/usr/include/qt5/QtQml/qqmlfile.h \
		/usr/include/qt5/QtQml/qqmlincubator.h \
		/usr/include/qt5/QtQml/qqmlinfo.h \
		/usr/include/qt5/QtQml/qqmlnetworkaccessmanagerfactory.h \
		/usr/include/qt5/QtQml/qqmlproperty.h \
		/usr/include/qt5/QtQml/qqmlpropertymap.h \
		/usr/include/qt5/QtCore/QHash \
		/usr/include/qt5/QtCore/QStringList \
		/usr/include/qt5/QtQml/qjsvalueiterator.h \
		/usr/include/qt5/QtQml/qtqmlversion.h \
		/usr/include/qt5/QtQuick/qtquickglobal.h \
		/usr/include/qt5/QtQuick/designersupport.h \
		/usr/include/qt5/QtCore/QtGlobal \
		/usr/include/qt5/QtCore/QRectF \
		/usr/include/qt5/QtQuick/qquickitem.h \
		/usr/include/qt5/QtQuick/qquickpainteditem.h \
		/usr/include/qt5/QtQuick/qquicktextdocument.h \
		/usr/include/qt5/QtGui/QTextDocument \
		/usr/include/qt5/QtQuick/QQuickItem \
		/usr/include/qt5/QtQuick/qquickview.h \
		/usr/include/qt5/QtQuick/qquickwindow.h \
		/usr/include/qt5/QtQuick/qquickimageprovider.h \
		/usr/include/qt5/QtQuick/qsggeometry.h \
		/usr/include/qt5/QtQuick/qsgmaterial.h \
		/usr/include/qt5/QtQuick/qsgnode.h \
		/usr/include/qt5/QtGui/QMatrix4x4 \
		/usr/include/qt5/QtQuick/qsgflatcolormaterial.h \
		/usr/include/qt5/QtQuick/qsgsimplematerial.h \
		/usr/include/qt5/QtQuick/qsgsimplerectnode.h \
		/usr/include/qt5/QtQuick/qsgsimpletexturenode.h \
		/usr/include/qt5/QtQuick/qsgtexturematerial.h \
		/usr/include/qt5/QtQuick/qsgtexture.h \
		/usr/include/qt5/QtGui/QImage \
		/usr/include/qt5/QtQuick/qsgtextureprovider.h \
		/usr/include/qt5/QtQuick/qsgvertexcolormaterial.h \
		/usr/include/qt5/QtQuick/qtquickversion.h \
		/usr/include/sailfishapp/sailfishapp.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o harbour-sailyfish.o src/harbour-sailyfish.cpp

####### Install

install_qml: first FORCE
	@test -d $(INSTALL_ROOT)/usr/share/harbour-sailyfish || mkdir -p $(INSTALL_ROOT)/usr/share/harbour-sailyfish
	-$(INSTALL_DIR) /home/src1/harbour-sailyfish/qml $(INSTALL_ROOT)/usr/share/harbour-sailyfish/

uninstall_qml: FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/harbour-sailyfish/qml
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/harbour-sailyfish/ 


install_target: first FORCE
	@test -d $(INSTALL_ROOT)/usr/bin || mkdir -p $(INSTALL_ROOT)/usr/bin
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/usr/bin/$(QMAKE_TARGET)"

uninstall_target: FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/usr/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/bin/ 


install_desktop: first FORCE
	@test -d $(INSTALL_ROOT)/usr/share/applications || mkdir -p $(INSTALL_ROOT)/usr/share/applications
	-$(INSTALL_PROGRAM) /home/src1/harbour-sailyfish/harbour-sailyfish.desktop $(INSTALL_ROOT)/usr/share/applications/

uninstall_desktop: FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/applications/harbour-sailyfish.desktop
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/applications/ 


install_icon: first FORCE
	@test -d $(INSTALL_ROOT)/usr/share/icons/hicolor/86x86/apps || mkdir -p $(INSTALL_ROOT)/usr/share/icons/hicolor/86x86/apps
	-$(INSTALL_PROGRAM) /home/src1/harbour-sailyfish/harbour-sailyfish.png $(INSTALL_ROOT)/usr/share/icons/hicolor/86x86/apps/

uninstall_icon: FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/icons/hicolor/86x86/apps/harbour-sailyfish.png
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/86x86/apps/ 


install:  install_qml install_target install_desktop install_icon  FORCE

uninstall: uninstall_qml uninstall_target uninstall_desktop uninstall_icon   FORCE

FORCE:

