.class public abstract Lcom/itextpdf/io/font/CFFFont$Item;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Item"
.end annotation


# instance fields
.field protected myOffset:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 346
    iput v0, p0, Lcom/itextpdf/io/font/CFFFont$Item;->myOffset:I

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 0

    return-void
.end method

.method public increment([I)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    aget p1, p1, v0

    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Item;->myOffset:I

    return-void
.end method

.method public xref()V
    .locals 0

    return-void
.end method
