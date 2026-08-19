.class public abstract Lcom/itextpdf/pdfa/checker/PdfAChecker;
.super Ljava/lang/Object;
.source "PdfAChecker.java"


# static fields
.field public static final ICC_COLOR_SPACE_CMYK:Ljava/lang/String; = "CMYK"

.field public static final ICC_COLOR_SPACE_GRAY:Ljava/lang/String; = "GRAY"

.field public static final ICC_COLOR_SPACE_RGB:Ljava/lang/String; = "RGB "

.field public static final ICC_DEVICE_CLASS_MONITOR_PROFILE:Ljava/lang/String; = "mntr"

.field public static final ICC_DEVICE_CLASS_OUTPUT_PROFILE:Ljava/lang/String; = "prtr"

.field public static final maxGsStackDepth:I = 0x1c


# instance fields
.field protected checkedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected checkedObjectsColorspace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field protected cmykIsUsed:Z

.field protected conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field private fullCheckMode:Z

.field protected grayIsUsed:Z

.field protected gsStackDepth:I

.field protected pdfAOutputIntentColorSpace:Ljava/lang/String;

.field protected rgbIsUsed:Z


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->gsStackDepth:I

    .line 134
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->rgbIsUsed:Z

    .line 135
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->cmykIsUsed:Z

    .line 136
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->grayIsUsed:Z

    .line 147
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjectsColorspace:Ljava/util/Map;

    .line 150
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->fullCheckMode:Z

    .line 158
    iput-object p1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-void
.end method

.method private checkAnnotations(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 774
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 776
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 777
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 778
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 779
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkArrayRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 723
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 724
    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 725
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 726
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkDictionaryRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 732
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 733
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    const/4 v2, 0x0

    .line 734
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 736
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkOpenAction(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_0
    return-void
.end method

.method private checkOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 788
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 790
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 791
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4

    .line 748
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 750
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 752
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 753
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 754
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 755
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAnnotations(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 756
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 757
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 759
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 761
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    .line 762
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 763
    iget-object v3, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkPages(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2

    const/4 v0, 0x1

    .line 742
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 743
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 705
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 708
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 711
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_1

    .line 712
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 713
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_0

    .line 715
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAppearanceStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z
    .locals 1

    .line 651
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_1A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 805
    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 807
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 809
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private getPdfAOutputIntent(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3

    const/4 v0, 0x0

    .line 825
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 826
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 827
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->GTS_PDFA1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected static isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 2

    .line 664
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Transparency:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 665
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    .line 664
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCheckerOutputIntent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 837
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 839
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object p1

    .line 840
    iput-object p1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setPdfAOutputIntentColorSpace(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 816
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getPdfAOutputIntent(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 821
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->setCheckerOutputIntent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method


# virtual methods
.method protected abstract checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected checkAppearanceStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 697
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 701
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public abstract checkCanvasStack(C)V
.end method

.method protected abstract checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method public abstract checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V
.end method

.method protected abstract checkColorsUsages()V
.end method

.method protected abstract checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
.end method

.method public checkDocument(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 171
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->setPdfAOutputIntentColorSpace(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkMetaData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 176
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkTrailer(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkLogicalStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 178
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 180
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPages(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 181
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->OpenAction:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkOpenAction(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 182
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColorsUsages()V

    return-void
.end method

.method public abstract checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkFont(Lcom/itextpdf/kernel/font/PdfFont;)V
.end method

.method public abstract checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkLogicalStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkMetaData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
.end method

.method protected abstract checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V
.end method

.method protected abstract checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V
.end method

.method protected abstract checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V
.end method

.method public checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V

    goto :goto_0

    .line 226
    :pswitch_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 227
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkDictionaryRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 206
    :pswitch_2
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    goto :goto_0

    .line 203
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_0

    .line 217
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 218
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filespec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 222
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkDictionaryRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 212
    :cond_3
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 213
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkArrayRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V
.end method

.method public abstract checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V
.end method

.method protected checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 590
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 591
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 592
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 595
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 596
    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 598
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 600
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    .line 603
    :goto_1
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    .line 606
    :cond_3
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    invoke-virtual {p0, v4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 605
    :cond_4
    :goto_2
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_7

    .line 613
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 614
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 615
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 616
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v1

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_9

    .line 622
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 623
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 624
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 625
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 626
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method protected checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 688
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    return-void
.end method

.method public checkSignature(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkSinglePage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void
.end method

.method protected abstract checkSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
.end method

.method public checkTagStructureElement(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract checkTrailer(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkXrefTable(Lcom/itextpdf/kernel/pdf/PdfXrefTable;)V
.end method

.method protected abstract getAllowedNamedActions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end method

.method public getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method protected abstract getForbiddenActions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getMaxNumberOfIndirectObjects()J
.end method

.method protected isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isFullCheckMode()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->fullCheckMode:Z

    return v0
.end method

.method public objectIsChecked(Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setFullCheckMode(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->fullCheckMode:Z

    return-void
.end method
