.class public Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;
.super Ljava/lang/Object;
.source "CMapLocationFromBytes.java"

# interfaces
.implements Lcom/itextpdf/io/font/cmap/ICMapLocation;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;->data:[B

    return-void
.end method


# virtual methods
.method public getLocation(Ljava/lang/String;)Lcom/itextpdf/io/source/PdfTokenizer;
    .locals 3

    .line 62
    new-instance p1, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;->data:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {p1, v0}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    return-object p1
.end method
