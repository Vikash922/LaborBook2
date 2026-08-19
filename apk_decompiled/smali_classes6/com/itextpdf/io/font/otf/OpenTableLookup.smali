.class public abstract Lcom/itextpdf/io/font/otf/OpenTableLookup;
.super Ljava/lang/Object;
.source "OpenTableLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    }
.end annotation


# instance fields
.field protected lookupFlag:I

.field protected openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

.field protected subTableLocations:[I


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->lookupFlag:I

    .line 55
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->subTableLocations:[I

    .line 56
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    return-void
.end method


# virtual methods
.method public getLookupFlag()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->lookupFlag:I

    return v0
.end method

.method public hasSubstitution(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract readSubTable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readSubTables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->subTableLocations:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 80
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->readSubTable(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transformLine(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 4

    .line 67
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 68
    :goto_0
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v3, :cond_2

    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt v2, v3, :cond_2

    .line 69
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public abstract transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
.end method
