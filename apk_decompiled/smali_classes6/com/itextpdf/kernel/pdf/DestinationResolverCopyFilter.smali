.class public Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;
.super Ljava/lang/Object;
.source "DestinationResolverCopyFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/utils/ICopyFilter;


# static fields
.field private static final EXCLUDE_KEYS_ACTIONCOPY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fromDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private final targetDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->EXCLUDE_KEYS_ACTIONCOPY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->fromDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 74
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->targetDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method private static getDirectPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$processAction$5(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$processLinkAnnotion$1(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$processLinkAnnotion$3(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 0

    return-void
.end method

.method private processAction(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->fromDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 125
    invoke-virtual {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->makeDestination(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda0;-><init>(Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    new-instance p1, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda1;-><init>()V

    .line 124
    invoke-virtual {v0, v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->storeDestinationToReaddress(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processLinkAnnotion(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 3

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->fromDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 98
    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-static {p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->makeDestination(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object p3

    new-instance v2, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda2;-><init>(Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    new-instance p1, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda3;-><init>()V

    .line 97
    invoke-virtual {v0, p3, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->storeDestinationToReaddress(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return v1

    .line 107
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->fromDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 109
    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-static {p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->makeDestination(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object p3

    new-instance v2, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda4;-><init>(Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    new-instance p1, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter$$ExternalSyntheticLambda5;-><init>()V

    .line 108
    invoke-virtual {v0, p3, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->storeDestinationToReaddress(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method synthetic lambda$processAction$4$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->targetDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->EXCLUDE_KEYS_ACTIONCOPY:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    invoke-virtual {p1, v0, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 130
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p4

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 131
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2, p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 133
    :cond_0
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$processLinkAnnotion$0$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 1

    .line 99
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->targetDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, p3, p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 100
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfPage;

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p3, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 101
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p3, v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(ILcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-void
.end method

.method synthetic lambda$processLinkAnnotion$2$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->targetDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 113
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfPage;

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p3, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 114
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p3, v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(ILcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-void
.end method

.method public shouldProcess(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 3

    .line 79
    invoke-static {p3}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->getDirectPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 81
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 83
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne v1, v2, :cond_0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->processAction(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 89
    invoke-direct {p0, p1, p3, v0}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;->processLinkAnnotion(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
