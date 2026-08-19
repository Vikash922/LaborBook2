.class public final Lcom/itextpdf/io/font/CFFFont$StringItem;
.super Lcom/itextpdf/io/font/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "StringItem"
.end annotation


# instance fields
.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/itextpdf/io/font/CFFFont$Item;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont$StringItem;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 3

    const/4 v0, 0x0

    .line 594
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont$StringItem;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 595
    iget v1, p0, Lcom/itextpdf/io/font/CFFFont$StringItem;->myOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont$StringItem;->s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public increment([I)V
    .locals 3

    .line 589
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    const/4 v0, 0x0

    .line 590
    aget v1, p1, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont$StringItem;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method
