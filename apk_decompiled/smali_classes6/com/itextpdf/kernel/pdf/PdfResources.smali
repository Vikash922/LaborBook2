.class public Lcom/itextpdf/kernel/pdf/PdfResources;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final Cs:Ljava/lang/String; = "Cs"

.field private static final F:Ljava/lang/String; = "F"

.field private static final Fm:Ljava/lang/String; = "Fm"

.field private static final Gs:Ljava/lang/String; = "Gs"

.field private static final Im:Ljava/lang/String; = "Im"

.field private static final P:Ljava/lang/String; = "P"

.field private static final Pr:Ljava/lang/String; = "Pr"

.field private static final Sh:Ljava/lang/String; = "Sh"


# instance fields
.field private csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private fontNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private isModified:Z

.field private patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private propNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private readOnly:Z

.field private resourceToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "F"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->fontNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Im"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Fm"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ExtGState:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Gs"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Properties:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Pr"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->propNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 84
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Cs"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "P"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 86
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Sh"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    .line 89
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->buildResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method private checkAndResolveCircularReferences(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2

    .line 525
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 527
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 532
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public addColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addExtGState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 0

    .line 116
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;

    .line 117
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->fontNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addForm(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 173
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceNames(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    :goto_0
    return-object p2
.end method

.method public addImage(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addPattern(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addPattern(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->propNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 488
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceName(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->generate(Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 492
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->getResourceType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    :cond_0
    return-object v0
.end method

.method addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">(",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;",
            "Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfName;"
        }
    .end annotation

    .line 460
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method protected addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2

    .line 464
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->checkAndResolveCircularReferences(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->setPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 469
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->buildResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object v0, v1

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 483
    :goto_0
    invoke-virtual {v0, p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 484
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public addShading(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public addShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method protected buildResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6

    .line 499
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 500
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 504
    :cond_1
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    .line 511
    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 512
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getColorSpace(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .locals 1

    .line 247
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getForm(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 183
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImage(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2

    .line 141
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPattern(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    .locals 1

    .line 272
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 273
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPatternInstance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPdfExtGState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    .locals 1

    .line 208
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ExtGState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProcSet()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ProcSet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 223
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Properties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public getResourceName(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    :cond_0
    return-object v0
.end method

.method public getResourceName(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">(",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;)",
            "Lcom/itextpdf/kernel/pdf/PdfName;"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceName(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1
.end method

.method public getResourceNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 387
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceNames(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getResourceNames(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ")",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-nez p1, :cond_0

    .line 422
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 0

    .line 447
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getShading(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
    .locals 1

    .line 297
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 298
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->makeShading(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected isModified()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    return v0
.end method

.method protected isReadOnly()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultCmyk(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 2

    .line 346
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method public setDefaultGray(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 2

    .line 328
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method public setDefaultRgb(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method public setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    .line 319
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setProcSet(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ProcSet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected setReadOnly(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    return-void
.end method
