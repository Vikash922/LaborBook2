.class Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;
.super Ljava/lang/Object;
.source "Woff2Dec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/woff2/Woff2Dec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeGlyphInfo"
.end annotation


# instance fields
.field public have_instructions:Z

.field public size:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput p1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;->size:I

    .line 384
    iput-boolean p2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;->have_instructions:Z

    return-void
.end method
