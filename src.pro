#-------------------------------------------------
#
# Project created by QtCreator 2014-12-19T14:30:15
#
#-------------------------------------------------

QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
DEFINES += ZINT_VERSION=\\\"2.4.4\\\"
DEFINES += NO_PNG
DEFINES += _CRT_SECURE_NO_WARNINGS _CRT_NONSTDC_NO_WARNINGS
QMAKE_CXXFLAGS += -Wno-sign-compare
TARGET = src
TEMPLATE = app
SOURCES += main.cpp\
        mainwindow.cpp \
    Barcode.cpp \
    qzint.cpp \
    backend/2of5.c \
    backend/auspost.c \
    backend/aztec.c \
    backend/code.c \
    backend/code1.c \
    backend/code128.c \
    backend/code16k.c \
    backend/code49.c \
    backend/common.c \
    backend/composite.c \
    backend/dllversion.c \
    backend/dmatrix.c \
    backend/gridmtx.c \
    backend/gs1.c \
    backend/imail.c \
    backend/large.c \
    backend/library.c \
    backend/maxicode.c \
    backend/medical.c \
    backend/pdf417.c \
    backend/plessey.c \
    backend/png.c \
    backend/postal.c \
    backend/ps.c \
    backend/qr.c \
    backend/reedsol.c \
    backend/render.c \
    backend/rss.c \
    backend/svg.c \
    backend/telepen.c \
    backend/upcean.c
HEADERS  += mainwindow.h \
    qzint.h \
    Barcode.h \
    backend/aztec.h \
    backend/code1.h \
    backend/code49.h \
    backend/common.h \
    backend/composite.h \
    backend/dmatrix.h \
    backend/font.h \
    backend/gb2312.h \
    backend/gridmtx.h \
    backend/gs1.h \
    backend/large.h \
    backend/maxicode.h \
    backend/maxipng.h \
    backend/ms_stdint.h \
    backend/pdf417.h \
    backend/qr.h \
    backend/reedsol.h \
    backend/rss.h \
    backend/sjis.h \
    backend/zint.h
FORMS    += mainwindow.ui
INCLUDEPATH += $$PWD/backend
DEPENDPATH += $$PWD/backend
