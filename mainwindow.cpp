#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "Barcode.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    barcode = new BarCode(this);
    barcode->setVisible(false);
    typedef QPair<BarCode::BarcodeTypes, QString> BarcodeType;
    BarCode::BarcodeTypePairList typeList = BarCode::getTypeList();
    foreach (BarcodeType t, typeList) {
        ui->comboBox->addItem(t.second, QVariant(t.first));
    }
    connect(ui->lineEdit, SIGNAL(editingFinished()), this, SLOT(slotGenerateBarcode()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::changeEvent(QEvent *e)
{
    QMainWindow::changeEvent(e);
    switch (e->type()) {
    case QEvent::LanguageChange:
        ui->retranslateUi(this);
        break;
    default:
        break;
    }
}

void MainWindow::slotGenerateBarcode()
{
    QString text = ui->lineEdit->text();
    if (text.trimmed().isEmpty())
        return;
    QImage barcodeImage(ui->labelBarcode->size(), QImage::Format_ARGB32);
    barcodeImage.fill(QColor(255, 255, 255, 0));
    QPainter painter(&barcodeImage);
    barcode->setBarcodeType((BarCode::BarcodeTypes)ui->comboBox->itemData(ui->comboBox->currentIndex()).toInt());
    barcode->setValue(text);
    barcode->drawBarcode(&painter, 0, 0, barcodeImage.width(), barcodeImage.height());
    painter.end();
    ui->labelBarcode->setPixmap(QPixmap::fromImage(barcodeImage));
}
