.class public Lcom/itextpdf/pdfa/checker/PdfA1Checker;
.super Lcom/itextpdf/pdfa/checker/PdfAChecker;
.source "PdfA1Checker.java"


# static fields
.field private static final MAX_NUMBER_OF_DEVICEN_COLOR_COMPONENTS:I = 0x8

.field protected static final allowedNamedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final allowedRenderingIntents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final contentAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final forbiddenActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final forbiddenAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FileAttachment:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 97
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenAnnotations:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FreeText:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Line:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Square:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Circle:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Stamp:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Ink:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x6

    aput-object v3, v2, v9

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x7

    aput-object v3, v2, v10

    .line 102
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->contentAnnotations:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v10, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ResetForm:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ImportData:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v7

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->JavaScript:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v8

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v9

    .line 112
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenActions:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v7, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->NextPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->PrevPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FirstPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->LastPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    .line 121
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedNamedActions:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v7, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RelativeColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AbsoluteColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Perceptual:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Saturation:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    .line 127
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedRenderingIntents:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    return-void
.end method

.method private getMaxArrayCapacity()I
    .locals 1

    const/16 v0, 0x1fff

    return v0
.end method

.method private getMaxDictionaryCapacity()I
    .locals 1

    const/16 v0, 0xfff

    return v0
.end method


# virtual methods
.method protected checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 711
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 713
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 714
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getForbiddenActions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 717
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Named:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 718
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getAllowedNamedActions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 720
    :cond_1
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "Named action type {0} not allowed"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 723
    :cond_2
    :goto_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->SetState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->NoOp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 724
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Deprecated setstate and noop actions are not allowed"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "{0} actions are not allowed"

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method protected checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5

    .line 622
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 624
    const-string v1, "Annotation type {0} is not permitted"

    if-eqz v0, :cond_14

    .line 627
    sget-object v2, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenAnnotations:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 630
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 631
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "An annotation dictionary shall not contain the ca key with a value other than 1"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :cond_1
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 638
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    .line 639
    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x20

    .line 640
    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 643
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 644
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Text annotations should set the nozoom and norotate flag bits of the f key to 1"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 646
    :cond_3
    :goto_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 647
    :cond_4
    const-string v1, "RGB "

    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 652
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 654
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    const-string v3, "Appearance dictionary shall contain only the n key with stream value"

    if-nez v2, :cond_9

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 657
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 658
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 659
    :cond_6
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "If an annotation dictionary\'s Subtype key has a value of Widget and its FT key has a value of Btn, the value of the N key shall be an appearance subdictionary"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_7
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 666
    :goto_2
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_3

    .line 663
    :cond_8
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 655
    :cond_9
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_a
    :goto_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    .line 670
    :cond_b
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Widget annotation dictionary or field dictionary shall not include a or aa entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 673
    :cond_c
    :goto_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 677
    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 678
    sget-object v1, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->contentAnnotations:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    .line 679
    :cond_d
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "Annotation of type {0} should have contents key"

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    :cond_e
    :goto_5
    return-void

    .line 674
    :cond_f
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "An annotation dictionary shall not contain aa key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 648
    :cond_10
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Destoutputprofile in the pdfa1 outputintent dictionary shall be rgb"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 641
    :cond_11
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "The f keys print flag bit shall be set to 1 and its hidden invisible and noview flag bits shall be set to 0"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_12
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "An annotation dictionary shall contain the f key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_13
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 625
    :cond_14
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    const-string v0, "null"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method public checkCanvasStack(C)V
    .locals 1

    const/16 v0, 0x71

    if-ne v0, p1, :cond_1

    .line 147
    iget p1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Graphics state stack depth is greater than 28"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x51

    if-ne v0, p1, :cond_2

    .line 150
    iget p1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 730
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 733
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A name dictionary shall not contain the EmbeddedFiles key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 734
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall not contain the ocproperties key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 731
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall not contain aa entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 175
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p0, p4, p2, v0, p3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 176
    instance-of p2, p1, Lcom/itextpdf/kernel/colors/PatternColor;

    if-eqz p2, :cond_0

    .line 177
    check-cast p1, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/PatternColor;->getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object p1

    .line 178
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    :cond_0
    return-void
.end method

.method public checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V
    .locals 0

    .line 186
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    if-eqz p2, :cond_0

    .line 187
    check-cast p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_0
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    if-eqz p2, :cond_2

    .line 189
    check-cast p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    .line 190
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getNumberOfComponents()I

    move-result p2

    const/16 p3, 0x8

    if-gt p2, p3, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    goto :goto_0

    .line 191
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The number of color components in DeviceN colorspace should not exceed {0}"

    .line 193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 198
    :cond_2
    :goto_0
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const-string p3, "Devicergb and devicecmyk colorspaces cannot be used both in one file"

    const/4 p4, 0x1

    if-eqz p2, :cond_4

    .line 199
    iget-boolean p1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    if-nez p1, :cond_3

    .line 202
    iput-boolean p4, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    goto :goto_1

    .line 200
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, p3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_4
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz p2, :cond_6

    .line 204
    iget-boolean p1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    if-nez p1, :cond_5

    .line 207
    iput-boolean p4, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    goto :goto_1

    .line 205
    :cond_5
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, p3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_6
    instance-of p1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz p1, :cond_7

    .line 209
    iput-boolean p4, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->grayIsUsed:Z

    :cond_7
    :goto_1
    return-void
.end method

.method protected checkColorsUsages()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->grayIsUsed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    if-eqz v0, :cond_3

    .line 243
    const-string v0, "RGB "

    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "Devicergb may be used only if the file has a rgb pdfa outputIntent"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    if-eqz v0, :cond_5

    .line 248
    const-string v0, "CMYK"

    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 249
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "Devicecmyk may be used only if the file has a cmyk pdfa outputIntent"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void

    .line 239
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "If device rgb cmyk gray used in file, that file shall contain pdfa outputintent"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 3

    .line 334
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isFullCheckMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    .line 336
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 337
    invoke-virtual {v2, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 339
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;-><init>(Lcom/itextpdf/io/source/PdfTokenizer;)V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->parse(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 344
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 348
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot parse content stream."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3

    .line 355
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 361
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V

    goto :goto_3

    .line 364
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    goto :goto_3

    .line 358
    :cond_2
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_3

    .line 374
    :cond_3
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 375
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 376
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 377
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    const/4 v2, 0x0

    .line 378
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 381
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 367
    :cond_5
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 368
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 369
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 370
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 256
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-nez p2, :cond_a

    .line 259
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 260
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An extgstate dictionary shall not contain the TR2 key with a value other than default"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 267
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The smask key is not allowed in extgstate"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 272
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Compatible:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 273
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Blend mode shall have value normal or compatible"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    .line 277
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_6

    goto :goto_3

    .line 278
    :cond_6
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Transparency is not allowed. CA shall be equal to 1"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 282
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    goto :goto_4

    .line 283
    :cond_8
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Transparency is not allowed. ca shall be equal to 1"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    return-void

    .line 257
    :cond_a
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An extgstate dictionary shall not contain the tr key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 615
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 616
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "File specification dictionary shall not contain the EF key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkFont(Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 2

    .line 304
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    instance-of v0, p1, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    if-eqz v0, :cond_1

    .line 310
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    .line 311
    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V

    .line 319
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/itextpdf/kernel/font/PdfType3Font;

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CharProcs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 322
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_1

    :cond_2
    return-void

    .line 305
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "All the fonts must be embedded. This one is not: {0}"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method public checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0

    return-void
.end method

.method protected checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 689
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 691
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Needappearances flag of the interactive form dictionary shall either not be presented or shall be false"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 694
    :cond_2
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 696
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 698
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 700
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 701
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 704
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 702
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Widget annotation dictionary or field dictionary shall not include a or aa entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method protected checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 2

    .line 440
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 445
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 448
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "The smask key is not allowed in xobjects"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void

    .line 457
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A group object with an s key with a value of transparency shall not be included in a form xobject"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 449
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A form xobject dictionary shall not contain subtype2 key with a value of PS"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_5
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A form xobject dictionary shall not contain PS key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    :cond_6
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A form xobject dictionary shall not contain opi key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 408
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 410
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    return-void

    .line 413
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    .line 416
    invoke-virtual {p0, v0, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 417
    iget-object p2, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_1
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Alternates:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 423
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 427
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 428
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The value of interpolate key shall not be true"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_3
    :goto_0
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Intent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 433
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 434
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The smask key is not allowed in xobjects"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void

    .line 424
    :cond_6
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An image dictionary shall not contain opi key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_7
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An image dictionary shall not contain alternates key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5

    .line 156
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 157
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 162
    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 163
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    .line 164
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected checkLogicalStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MarkInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Marked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Marked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Lang:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 472
    const-class p1, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 473
    const-string v0, "Catalog dictionary should contain lang entry"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall include a markinfo dictionary whose entry marked shall have a value of true"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkMetaData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 480
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall contain metadata entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
    .locals 2

    .line 389
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v1, "Cp1252"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MacRoman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 392
    :cond_1
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "All non-symbolic TrueType fonts shall specify MacRomanEncoding or WinAnsiEncoding as the value of the Encoding entry in the font dictionary  This also means that Encoding entry in the font dictionary shall not be an encoding dictionary "

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4

    .line 487
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 493
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 494
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 497
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 499
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "If outputintents array has more than one entry with destoutputprofile key the same indirect object shall be used as the value of that object"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 745
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 747
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 748
    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 749
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 752
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 753
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "A group object with an s key with a value of transparency shall not be included in a page xobject"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    return-void
.end method

.method protected checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    return-void
.end method

.method protected checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 1

    .line 544
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    invoke-direct {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxArrayCapacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 545
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Maximum array capacity is exceeded"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 551
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p1

    invoke-direct {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxDictionaryCapacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 552
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Maximum dictionary capacity is exceeded"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    .line 578
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxNameLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 579
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "PdfName is too long"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V
    .locals 4

    .line 507
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->hasDecimalPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxRealValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Real number is out of range"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 512
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxIntegerValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMinIntegerValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    :goto_0
    return-void

    .line 513
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Integer number is out of range"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 3

    .line 558
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 560
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FDecodeParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 564
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 565
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v1, "LZWDecode filter is not permitted"

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 568
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v0, :cond_3

    .line 569
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 570
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 571
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 561
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Stream object dictionary shall not contain the f ffilter or fdecodeparams keys"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 1

    .line 594
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxStringLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 595
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "PdfString is too long"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedRenderingIntents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 298
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "If specified rendering shall be one of the following relativecolorimetric absolutecolorimetric perceptual or saturation"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
    .locals 1

    .line 398
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 399
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "All symbolic TrueType fonts shall not specify an Encoding entry in the font dictionary "

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkTrailer(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 759
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 760
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Keyword encrypt shall not be used in the trailer dictionary"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkXrefTable(Lcom/itextpdf/kernel/pdf/PdfXrefTable;)V
    .locals 4

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->getCountOfIndirectObjects()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxNumberOfIndirectObjects()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Maximum number of indirect objects exceeded"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getAllowedNamedActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedNamedActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getForbiddenActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 4

    .line 772
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 773
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 774
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 775
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getMaxIntegerValue()J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method protected getMaxNameLength()I
    .locals 1

    const/16 v0, 0x7f

    return v0
.end method

.method protected getMaxNumberOfIndirectObjects()J
    .locals 2

    const-wide/32 v0, 0x7fffff

    return-wide v0
.end method

.method protected getMaxRealValue()D
    .locals 2

    const-wide v0, 0x40dfffc000000000L    # 32767.0

    return-wide v0
.end method

.method protected getMaxStringLength()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method protected getMinIntegerValue()J
    .locals 2

    const-wide/32 v0, -0x80000000

    return-wide v0
.end method
