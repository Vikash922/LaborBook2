.class public Lcom/itextpdf/layout/properties/ParagraphOrphansControl;
.super Ljava/lang/Object;
.source "ParagraphOrphansControl.java"


# instance fields
.field private minOrphans:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->minOrphans:I

    return-void
.end method


# virtual methods
.method public getMinOrphans()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->minOrphans:I

    return v0
.end method

.method public handleViolatedOrphans(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Ljava/lang/String;)V
    .locals 3

    .line 77
    const-class v0, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->minOrphans:I

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 80
    const-string p2, "Orphans constraint violated for paragraph split at page {0}. Min number of orphans: {1}; actual: {2}. \nComment: {3}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    const-string p1, "Premature call of handleViolation method."

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMinAllowedOrphans(I)Lcom/itextpdf/layout/properties/ParagraphOrphansControl;
    .locals 0

    .line 55
    iput p1, p0, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->minOrphans:I

    return-object p0
.end method
