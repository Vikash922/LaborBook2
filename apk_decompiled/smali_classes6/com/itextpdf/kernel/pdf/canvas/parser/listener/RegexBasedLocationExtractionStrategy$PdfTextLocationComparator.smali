.class final Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$PdfTextLocationComparator;
.super Ljava/lang/Object;
.source "RegexBasedLocationExtractionStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PdfTextLocationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$1;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$PdfTextLocationComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;)I
    .locals 5

    .line 212
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 213
    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    .line 214
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-gez v0, :cond_2

    .line 215
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 217
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 207
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$PdfTextLocationComparator;->compare(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;)I

    move-result p1

    return p1
.end method
