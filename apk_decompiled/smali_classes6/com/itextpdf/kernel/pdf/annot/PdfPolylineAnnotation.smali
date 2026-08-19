.class Lcom/itextpdf/kernel/pdf/annot/PdfPolylineAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
.source "PdfPolylineAnnotation.java"


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;[F)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;[F)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method


# virtual methods
.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 61
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PolyLine:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method
