.class public Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
.super Ljava/lang/Object;
.source "GlyphLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/GlyphLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActualText"
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 471
    :cond_1
    check-cast p1, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    .line 472
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    :cond_2
    iget-object p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
