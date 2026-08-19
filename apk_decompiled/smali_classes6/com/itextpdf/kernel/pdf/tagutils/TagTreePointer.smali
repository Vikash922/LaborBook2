.class public Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
.super Ljava/lang/Object;
.source "TagTreePointer.java"


# static fields
.field private static final MCR_MARKER:Ljava/lang/String; = "MCR"


# instance fields
.field private contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

.field private currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

.field private currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

.field private currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

.field private nextNewKidIndex:I

.field private tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    .line 110
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 112
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setNamespaceForNewTags(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    .line 129
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 130
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    .line 121
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 123
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 124
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 125
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-void
.end method

.method private addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .locals 2

    .line 779
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentElemEnsureIndirect()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getNextNewKidPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    move-result-object p1

    return-object p1
.end method

.method private addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 2

    .line 775
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentElemEnsureIndirect()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getNextNewKidPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    return-object p1
.end method

.method private addNewKid(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 3

    .line 759
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 760
    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityPropertiesToStructElem;->apply(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 761
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->processKidNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 762
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    return-object p1
.end method

.method private addNewKid(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 2

    .line 753
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 754
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->processKidNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 755
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    return-object p1
.end method

.method private ensureElementPageEqualsKidPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 2

    .line 824
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 828
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-object v0, p2

    .line 831
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getCurrentElemEnsureIndirect()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 2

    .line 783
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :cond_0
    return-object v0
.end method

.method private getNextNewKidPosition()I
    .locals 2

    .line 747
    iget v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    const/4 v1, -0x1

    .line 748
    iput v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    return v0
.end method

.method private markedContentNotInPageStream()Z
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareMcrForMovingToNewParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .locals 5

    .line 791
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 792
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 795
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_0

    .line 796
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 798
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 799
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->ensureElementPageEqualsKidPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    .line 801
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 802
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->MCR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 803
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 806
    :cond_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_3
    if-eqz v2, :cond_5

    .line 811
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MCR:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 812
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    invoke-direct {p1, v2, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_1

    .line 813
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OBJR:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 814
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    invoke-direct {p1, v2, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_1

    .line 817
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;-><init>(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    :cond_6
    :goto_1
    return-object p1
.end method

.method private processKidNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 2

    .line 766
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 768
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 769
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 771
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ensureNamespaceRegistered(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    return-void
.end method

.method private throwExceptionIfCurrentPageIsNotInited()V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    if-eqz v0, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Page is not set for the pdf tag structure."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAnnotationTag(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 3

    .line 300
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->throwExceptionIfCurrentPageIsNotInited()V

    .line 302
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNextStructParentIndex()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;I)V

    .line 303
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->ensureElementPageEqualsKidPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 307
    :cond_0
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    return-object p0
.end method

.method public addTag(ILcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->throwExceptionIfRoleIsInvalid(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setNextNewKidIndex(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 285
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0
.end method

.method public addTag(ILjava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->throwExceptionIfRoleIsInvalid(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setNextNewKidIndex(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 253
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0
.end method

.method public addTag(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    const/4 v0, -0x1

    .line 267
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(ILcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0
.end method

.method public addTag(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    const/4 v0, -0x1

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(ILjava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0
.end method

.method createNextMcidForStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;I)I
    .locals 4

    .line 705
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->throwExceptionIfCurrentPageIsNotInited()V

    .line 708
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->markedContentNotInPageStream()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->ensureElementPageEqualsKidPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_0

    .line 711
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 712
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->markedContentNotInPageStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Stm:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 716
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 717
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result p1

    return p1
.end method

.method public flushParentsIfAllKidsFlushed()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 3

    .line 624
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->flushParentIfBelongsToPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-object p0
.end method

.method public flushTag()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 593
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->flushTag(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :goto_0
    return-object p0

    .line 594
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot flush document root tag before document is closed."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    return-object v0
.end method

.method public getCurrentContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getCurrentPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object v0
.end method

.method getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "TagTreePointer is in invalid state: it points at removed element use TagTreePointer#moveToRoot."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object v0

    .line 731
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "TagTreePointer is in invalid state: it points at flushed element. Use TagTreePointer#moveToRoot."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInParentKidsList()I
    .locals 3

    .line 663
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 668
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 671
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getK()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 672
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 675
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 677
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->indexOf(Lcom/itextpdf/kernel/pdf/PdfObject;)I

    move-result v0

    return v0

    :cond_3
    return v2
.end method

.method public getKidsRoles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v1

    .line 570
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 572
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v3, :cond_1

    .line 574
    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    :cond_1
    const-string v2, "MCR"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getNamespaceForNewTags()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object v0
.end method

.method public getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 1

    .line 634
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/BackedAccessibilityProperties;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/tagutils/BackedAccessibilityProperties;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
    .locals 1

    const/4 v0, -0x1

    .line 449
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference(I)Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v0

    return-object v0
.end method

.method public getTagReference(I)Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
    .locals 2

    .line 460
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentElemEnsureIndirect()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;-><init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;I)V

    return-object v0
.end method

.method public isPointingToSameTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveToKid(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 503
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v0, :cond_0

    .line 504
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0

    .line 505
    :cond_0
    instance-of p1, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz p1, :cond_1

    .line 506
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot move to marked content reference."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 508
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot move to flushed kid."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveToKid(ILjava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 4

    .line 539
    const-string v0, "MCR"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 544
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 545
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 548
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    invoke-interface {v3}, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 549
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    if-ne v2, p1, :cond_1

    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0

    :cond_1
    move v2, v3

    .line 553
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    invoke-interface {v3}, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;->getKids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "No kid with such role."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot move to marked content reference."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveToKid(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToKid(ILjava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0
.end method

.method public moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 484
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-class v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 486
    const-string v1, "An attempt is made to move the tag tree pointer to the tag parent which has been already flushed. Tag tree pointer is moved to the root tag instead."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToRoot()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :goto_0
    return-object p0

    .line 480
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot move to parent current element is root."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveToPointer(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 0

    .line 690
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object p0
.end method

.method public moveToRoot()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0
.end method

.method public relocate(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getIndexInParentKidsList()I

    move-result v0

    if-ltz v0, :cond_0

    .line 438
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->relocateKid(ILcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0

    .line 436
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot relocate tag which parent is already flushed."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot relocate tag which is already flushed."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot relocate root tag."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public relocateKid(ILcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 390
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 394
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->isPointingToSameTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 399
    iget v0, p2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, v0, :cond_1

    sub-int/2addr v0, v1

    .line 402
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setNextNewKidIndex(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 408
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->removeKid(IZ)Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object p1

    .line 409
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v0, :cond_2

    .line 410
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    goto :goto_0

    .line 411
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v0, :cond_3

    .line 412
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->prepareMcrForMovingToNewParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    move-result-object p1

    .line 413
    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addNewKid(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    :cond_3
    :goto_0
    return-object p0

    .line 406
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot relocate tag which is already flushed."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot relocate tag which parent is already flushed."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Tag cannot be moved to the another document\'s tag structure."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTag()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 6

    .line 342
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v1

    .line 344
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-nez v2, :cond_4

    .line 348
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v2

    .line 349
    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 351
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 356
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->getObjForStructDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/Object;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->removeKid(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)I

    move-result v3

    .line 361
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 365
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    .line 368
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 369
    instance-of v5, v4, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 370
    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    goto :goto_1

    .line 372
    :cond_1
    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-direct {p0, v4, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->prepareMcrForMovingToNewParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 373
    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    :goto_1
    move v3, v5

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clear()V

    .line 377
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object p0

    .line 352
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot remove tag, because its parent is flushed."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot remove document root tag."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentStreamForTagging(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object p0
.end method

.method setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    .line 721
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentStructElem:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object p0

    .line 722
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "StructureElement shall contain parent object."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNamespaceForNewTags(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object p0
.end method

.method public setNextNewKidIndex(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 327
    iput p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->nextNewKidIndex:I

    :cond_0
    return-object p0
.end method

.method public setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    .line 148
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0

    .line 149
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The page has been already flushed."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setRole(Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-object p0
.end method
