.class Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;
.super Ljava/lang/Object;
.source "Woff2Dec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/woff2/Woff2Dec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamInfo"
.end annotation


# instance fields
.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput p1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    .line 628
    iput p2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    return-void
.end method
