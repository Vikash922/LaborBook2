.class public Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
.source "PdfTextMarkupAnnotation.java"


# static fields
.field public static final MarkupHighlight:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final MarkupSquiggly:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final MarkupStrikeout:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final MarkupUnderline:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Highlight:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupHighlight:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 58
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupUnderline:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 59
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StrikeOut:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupStrikeout:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 60
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Squiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupSquiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 64
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 65
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->setQuadPoints(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public static createHighLight(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2

    .line 98
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupHighlight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method

.method public static createSquiggly(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2

    .line 164
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupSquiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method

.method public static createStrikeout(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2

    .line 142
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupStrikeout:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method

.method public static createUnderline(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2

    .line 120
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupUnderline:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method


# virtual methods
.method public getQuadPoints()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->QuadPoints:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    :cond_0
    return-object v0
.end method

.method public setQuadPoints(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 1

    .line 212
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->QuadPoints:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    return-object p1
.end method
