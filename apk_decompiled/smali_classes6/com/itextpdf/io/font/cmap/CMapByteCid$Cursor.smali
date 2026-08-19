.class public Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;
.super Ljava/lang/Object;
.source "CMapByteCid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/cmap/CMapByteCid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Cursor"
.end annotation


# instance fields
.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    .line 64
    iput p2, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    return-void
.end method
