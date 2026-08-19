.class Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;
.super Ljava/lang/Object;
.source "PdfResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceNameGenerator"
.end annotation


# instance fields
.field private counter:I

.field private prefix:Ljava/lang/String;

.field private resourceType:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 573
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;I)V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->prefix:Ljava/lang/String;

    .line 561
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->resourceType:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 562
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->counter:I

    return-void
.end method


# virtual methods
.method public generate(Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 4

    .line 593
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 595
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->resourceType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->resourceType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getResourceType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->resourceType:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method
