.class public Lcom/itextpdf/io/image/JpegImageData;
.super Lcom/itextpdf/io/image/ImageData;
.source "JpegImageData.java"


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1

    .line 55
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    return-void
.end method
