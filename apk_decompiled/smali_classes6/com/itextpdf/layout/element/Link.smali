.class public Lcom/itextpdf/layout/element/Link;
.super Lcom/itextpdf/layout/element/Text;
.source "Link.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/element/Link;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x58

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/element/Link;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 3

    .line 93
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/element/Link;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/itextpdf/layout/element/Link;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Link"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Link;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Link;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getLinkAnnotation()Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    .locals 1

    const/16 v0, 0x58

    .line 101
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Link;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 114
    new-instance v0, Lcom/itextpdf/layout/renderer/LinkRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Link;->text:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/LinkRenderer;-><init>(Lcom/itextpdf/layout/element/Link;Ljava/lang/String;)V

    return-object v0
.end method
