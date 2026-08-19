.class Lcom/itextpdf/io/font/GidAwareGlyph;
.super Lcom/itextpdf/io/font/otf/Glyph;
.source "GidAwareGlyph.java"


# instance fields
.field private gid:I


# direct methods
.method public constructor <init>(III[I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    return-void
.end method


# virtual methods
.method public getGid()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/itextpdf/io/font/GidAwareGlyph;->gid:I

    return v0
.end method

.method public setGid(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/itextpdf/io/font/GidAwareGlyph;->gid:I

    return-void
.end method
