.class public final Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;
.super Lcom/itextpdf/io/font/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SubrMarkerItem"
.end annotation


# instance fields
.field private indexBase:Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

.field private offItem:Lcom/itextpdf/io/font/CFFFont$OffsetItem;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/itextpdf/io/font/CFFFont$Item;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;->offItem:Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 462
    iput-object p2, p0, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;->indexBase:Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    return-void
.end method


# virtual methods
.method public xref()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;->offItem:Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;->myOffset:I

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;->indexBase:Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;->myOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/CFFFont$OffsetItem;->set(I)V

    return-void
.end method
