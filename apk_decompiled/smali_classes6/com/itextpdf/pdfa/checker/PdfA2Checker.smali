.class public Lcom/itextpdf/pdfa/checker/PdfA2Checker;
.super Lcom/itextpdf/pdfa/checker/PdfA1Checker;
.source "PdfA2Checker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/pdfa/checker/PdfA2Checker$UpdateCanvasGraphicsState;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_OF_DEVICEN_COLOR_COMPONENTS:I = 0x20

.field static final MAX_PAGE_SIZE:I = 0x3840

.field static final MIN_PAGE_SIZE:I = 0x3

.field protected static final allowedBlendModes:Ljava/util/Set;
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


# instance fields
.field private currentFillCsIsIccBasedCMYK:Z

.field private currentStrokeCsIsIccBasedCMYK:Z

.field private separationColorSpaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ">;"
        }
    .end annotation
.end field

.field private transparencyObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 99
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->_3D:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Screen:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 100
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenAnnotations:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0xb

    new-array v3, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v4

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v5

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v6

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ResetForm:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ImportData:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v1

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->JavaScript:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x5

    aput-object v8, v3, v9

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x6

    aput-object v8, v3, v10

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->SetOCGState:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v11, 0x7

    aput-object v8, v3, v11

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Rendition:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v12, 0x8

    aput-object v8, v3, v12

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Trans:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v13, 0x9

    aput-object v8, v3, v13

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo3DView:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v14, 0xa

    aput-object v8, v3, v14

    .line 106
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenActions:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0x11

    new-array v3, v3, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v4

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Compatible:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v5

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Multiply:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v6

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Screen:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v7

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Overlay:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Darken:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v9

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lighten:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v10

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorDodge:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v11

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorBurn:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v12

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->HardLight:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v13

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SoftLight:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v14

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Difference:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v2

    const/16 v1, 0xc

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Exclusion:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v3, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Hue:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v3, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Saturation:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v3, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Color:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v3, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Luminosity:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v3, v1

    .line 119
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->allowedBlendModes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    .line 143
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    .line 145
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    .line 147
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    return-void
.end method

.method private checkAnnotationsForTransparency(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 926
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 927
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 928
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 930
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkAppearanceStreamForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkAppearanceStreamForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
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

    .line 936
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 939
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 942
    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 944
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkAppearanceStreamForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkObjectWithResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;)V

    goto :goto_0

    .line 943
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method private checkBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    .line 983
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->allowedBlendModes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 984
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Only standard blend modes shall be used for the value of the BM key in an extended graphic state dictionary"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkCatalogConfig(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/HashSet<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1040
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1044
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1047
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1050
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1052
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 1053
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->fillOrderRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 1054
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Order array shall contain references to all ocgs"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 1048
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The as key shall not appear in any optional content configuration dictionary"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1045
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Value of name entry shall be unique among all optional content configuration dictionaries"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1042
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Optional content configuration dictionary shall contain name entry"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkContentsForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4

    .line 907
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 908
    const-string v1, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 911
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 913
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 914
    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 915
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1074
    :cond_0
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1077
    :cond_1
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 1078
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v1

    .line 1079
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;

    if-nez v2, :cond_3

    .line 1082
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v2

    if-ne v2, p4, :cond_2

    .line 1085
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    const/4 p1, 0x1

    return p1

    .line 1083
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Color space {0} shall have {1} components"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 1080
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Color space {0} shall be device independent"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method private checkObjectWithResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 953
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 956
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 962
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_1

    .line 963
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    :cond_1
    return-void

    .line 960
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 969
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSingleResourceTypeForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 970
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSingleResourceTypeForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private checkSeparationCS(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 5

    .line 998
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, 0x2

    .line 1003
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 1004
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 1005
    invoke-direct {p0, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAltCSIsTheSame(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v2

    const/4 v3, 0x3

    .line 1009
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 1010
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 1012
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1014
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1018
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "TintTransform and alternateSpace shall be the same for the all separation cs with the same name"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private checkSeparationInsideDeviceN(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    const/4 v0, 0x2

    .line 989
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAltCSIsTheSame(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 990
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 991
    :cond_0
    const-class p2, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 992
    const-string p3, "TintTransform and alternateSpace of separation arrays in the colorants of deviceN should be consistent with same attributes of deviceN"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 994
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSeparationCS(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method private checkSingleResourceTypeForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 976
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 977
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkObjectWithResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkType3FontGlyphs(Lcom/itextpdf/kernel/font/PdfType3Font;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 1091
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    .line 1092
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1095
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/Type3Glyph;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillOrderRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 1062
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1063
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1066
    :cond_0
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->fillOrderRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isAltCSIsTheSame(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 2

    .line 1028
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 1030
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of p2, p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz p2, :cond_1

    .line 1034
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method protected checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7

    .line 395
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 397
    const-string v1, "Annotation type {0} is not permitted"

    if-eqz v0, :cond_12

    .line 400
    sget-object v2, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenAnnotations:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 404
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez v1, :cond_3

    .line 405
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 410
    invoke-static {v1, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    invoke-static {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    invoke-static {v1, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x20

    .line 413
    invoke-static {v1, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x100

    .line 414
    invoke-static {v1, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 417
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    .line 418
    invoke-static {v1, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    invoke-static {v1, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Text annotations should set the nozoom and norotate flag bits of the f key to 1"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "The f keys print flag bit shall be set to 1 and its hidden invisible noview and togglenoview flag bits shall be set to 0"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "An annotation dictionary shall contain the f key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_3
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 425
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Widget annotation dictionary or field dictionary shall not include a or aa entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_5
    :goto_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 432
    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 433
    sget-object v1, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->contentAnnotations:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 434
    :cond_6
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

    .line 438
    :cond_7
    :goto_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 440
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    const-string v3, "Appearance dictionary shall contain only the n key with stream value"

    if-nez v2, :cond_b

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 443
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 444
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v2, :cond_8

    .line 445
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 446
    :cond_8
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Appearance dictionary of widget subtype and btn field type shall contain only the n key with dictionary value"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-eqz v2, :cond_a

    .line 448
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 452
    :goto_3
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_5

    .line 449
    :cond_a
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_b
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_c
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 456
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ne v5, v3, :cond_d

    .line 457
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 458
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    .line 459
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    const/4 v6, 0x3

    .line 460
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    if-eqz v3, :cond_d

    if-eqz v5, :cond_d

    if-eqz v2, :cond_d

    if-eqz p1, :cond_d

    .line 462
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_d

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p1

    cmpl-float p1, v2, p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    move v4, v1

    .line 465
    :goto_4
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 466
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    if-eqz v4, :cond_e

    goto :goto_5

    .line 468
    :cond_e
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Every annotation shall have at least one appearance dictionary"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_5
    return-void

    .line 429
    :cond_10
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "An annotation dictionary shall not contain aa key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_11
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 398
    :cond_12
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    const-string v0, "null"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method

.method protected checkAppearanceStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 474
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4

    .line 509
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedsRendering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 513
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 517
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Requirements:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 521
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 523
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 524
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSignature(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 529
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UR3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 531
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "No keys other than UR3 and DocMDP shall be present in a permissions dictionary"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 537
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AlternatePresentations:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 538
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall not contain alternatepresentations names entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_5
    :goto_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 546
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Configs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 550
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 551
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 555
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 556
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 558
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 559
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 563
    :cond_8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 566
    invoke-direct {p0, v2, v1, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkCatalogConfig(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_4

    :cond_9
    return-void

    .line 518
    :cond_a
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall not contain a requirements entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_b
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "A catalog dictionary shall not contain aa entry"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_c
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "The catalog dictionary shall not contain the needsrendering key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 4

    .line 184
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/PatternColor;

    if-eqz v0, :cond_1

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/PatternColor;->getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v0

    .line 186
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    if-eqz v1, :cond_0

    .line 187
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;->getShading()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 190
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ExtGState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/itextpdf/pdfa/checker/PdfA2Checker$UpdateCanvasGraphicsState;

    invoke-direct {v1, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker$UpdateCanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 192
    invoke-virtual {p0, v1, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 193
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 198
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void
.end method

.method public checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 204
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    goto :goto_0

    .line 207
    :cond_0
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    .line 211
    :cond_1
    :goto_0
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 213
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    .line 214
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSeparationCS(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    if-eqz p3, :cond_a

    .line 216
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v0, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto/16 :goto_2

    .line 219
    :cond_2
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v1, :cond_5

    .line 221
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    .line 222
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getNumberOfComponents()I

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_4

    .line 229
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 230
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Colorants:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 234
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 236
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSeparationInsideDeviceN(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_a

    .line 241
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v0, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 223
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The number of color components in DeviceN colorspace should not exceed {0}"

    .line 225
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 244
    :cond_5
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    if-eqz v0, :cond_6

    if-eqz p3, :cond_a

    .line 246
    move-object p3, p1

    check-cast p3, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v2, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 248
    :cond_6
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    if-eqz v0, :cond_7

    if-eqz p3, :cond_a

    .line 250
    move-object p3, p1

    check-cast p3, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v2, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 254
    :cond_7
    instance-of p3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    if-eqz p3, :cond_8

    .line 255
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2, p4, p3, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z

    move-result p2

    if-nez p2, :cond_a

    .line 256
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->rgbIsUsed:Z

    goto :goto_2

    .line 258
    :cond_8
    instance-of p3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz p3, :cond_9

    .line 259
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2, p4, p3, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z

    move-result p2

    if-nez p2, :cond_a

    .line 260
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->cmykIsUsed:Z

    goto :goto_2

    .line 262
    :cond_9
    instance-of p3, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz p3, :cond_a

    .line 263
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2, p4, p3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z

    move-result p2

    if-nez p2, :cond_a

    .line 264
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->grayIsUsed:Z

    :cond_a
    :goto_2
    if-eqz p4, :cond_c

    .line 269
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    if-eqz p2, :cond_c

    .line 270
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    .line 271
    const-string p2, "CMYK"

    invoke-static {p1}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 272
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 273
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    goto :goto_3

    .line 275
    :cond_b
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    :cond_c
    :goto_3
    return-void
.end method

.method protected checkColorsUsages()V
    .locals 2

    .line 723
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->rgbIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->cmykIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->grayIsUsed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 727
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->rgbIsUsed:Z

    if-eqz v0, :cond_3

    .line 728
    const-string v0, "RGB "

    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 729
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "Devicergb may be used only if the file has a rgb pdfa outputIntent or defaultrgb in usage context"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->cmykIsUsed:Z

    if-eqz v0, :cond_5

    .line 733
    const-string v0, "CMYK"

    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 734
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "Devicecmyk may be used only if the file has a cmyk pdfa outputIntent or defaultcmyk in usage context"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void

    .line 724
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "If device rgb cmyk gray used in file that file shall contain pdfa outputintent or DefaultRgb Cmyk Gray in usage context"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 4

    const/4 v0, 0x1

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getOverprintMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOverprint()Z

    move-result v1

    const-string v2, "Overprint mode shall not be one when an ICCBased CMYK colour space is used and when overprinting is set to true"

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOverprint()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 288
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_11

    .line 295
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHTP()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_10

    .line 299
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 300
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 301
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An extgstate dictionary shall not contain the TR2 key with a value other than default"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_9

    .line 305
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 306
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->HalftoneType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 308
    :cond_6
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "All halftones shall have halftonetype 1 or 5"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_7
    :goto_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->HalftoneName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 312
    :cond_8
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Halftones shall not contain halftonename"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 318
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_a

    .line 319
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_a
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 322
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 325
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 330
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 331
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_d
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz p2, :cond_e

    .line 334
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 335
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_5

    .line 337
    :cond_e
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz p2, :cond_f

    .line 338
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)V

    :cond_f
    return-void

    .line 296
    :cond_10
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An extgstate dictionary shall not contain the HTP key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_11
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An extgstate dictionary shall not contain the tr key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 587
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Desc:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const-class v0, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 593
    const-string v1, "File specification dictionary should contain desc key"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 596
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 597
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 602
    const-class p1, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 603
    const-string v0, "Embedded file shall be compliant with either ISO 19005-1 (PDF-A/1 standard) or ISO 19005-2 (PDF-A/2 standard). Please ensure that fact, because iText doesn\'t check embedded file."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Ef key of file specification dictionary shall contain dictionary with valid f key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 589
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "File specification dictionary shall contain f key and uf key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 858
    instance-of v0, p1, Lcom/itextpdf/kernel/font/PdfType3Font;

    if-eqz v0, :cond_0

    .line 859
    check-cast p1, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkType3FontGlyphs(Lcom/itextpdf/kernel/font/PdfType3Font;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    :cond_0
    return-void
.end method

.method protected checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 487
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Needappearances flag of the interactive form dictionary shall either not be presented or shall be false"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 496
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 498
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 500
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 501
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 492
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "The interactive form dictionary shall not contain the xfa key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method protected checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void
.end method

.method protected checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 3

    .line 876
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 878
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 881
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 884
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 888
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 890
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 894
    :goto_0
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    .line 895
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 897
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 898
    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 902
    :cond_2
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 903
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void

    .line 885
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "A form xobject dictionary shall not contain subtype2 key with a value of PS"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 882
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "A form xobject dictionary shall not contain PS key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 879
    :cond_5
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "A form xobject dictionary shall not contain opi key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 10

    .line 742
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 744
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    return-void

    .line 748
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    .line 751
    invoke-virtual {p0, v0, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 752
    iget-object v3, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Alternates:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 758
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 762
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 763
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The value of interpolate key shall not be true"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 765
    :cond_3
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Intent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 767
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 768
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SMaskInData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SMaskInData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 772
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->JPXDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 776
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/image/ImageDataFactory;->createJpeg2000([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    .line 777
    invoke-virtual {v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getParameters()Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    move-result-object v4

    .line 796
    iget-boolean v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->isJp2:Z

    if-eqz v5, :cond_14

    .line 800
    iget v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    const/4 v6, 0x3

    if-eq v5, v2, :cond_7

    iget v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    if-eq v5, v6, :cond_7

    iget v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_6

    goto :goto_1

    .line 801
    :cond_6
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The number of colour channels in the jpeg2000 data shall be 1, 3 or 4"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 804
    :cond_7
    :goto_1
    iget-object v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    if-eqz v5, :cond_11

    iget-object v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_11

    .line 806
    iget-object v5, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;

    .line 807
    invoke-virtual {v7}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getApprox()I

    move-result v8

    if-ne v8, v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_9

    .line 810
    invoke-virtual {v7}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v8

    if-eq v8, v2, :cond_9

    invoke-virtual {v7}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_9

    invoke-virtual {v7}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v8

    if-ne v8, v6, :cond_8

    goto :goto_3

    .line 811
    :cond_8
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The value of the meth entry in colr box shall be 1, 2 or 3"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
    :cond_9
    :goto_3
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    if-nez v8, :cond_d

    .line 815
    invoke-virtual {v7}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getEnumCs()I

    move-result v8

    if-eq v8, v2, :cond_c

    if-eq v8, v6, :cond_b

    const/16 v9, 0xc

    if-eq v8, v9, :cond_a

    goto :goto_4

    .line 827
    :cond_a
    new-instance v8, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;-><init>()V

    .line 828
    invoke-virtual {p0, v8, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 829
    iget-object v9, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v9, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 822
    :cond_b
    new-instance v8, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    .line 823
    invoke-virtual {p0, v8, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 824
    iget-object v9, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v9, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 817
    :cond_c
    new-instance v8, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;-><init>()V

    .line 818
    invoke-virtual {p0, v8, p2, v2, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 819
    iget-object v9, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v9, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_d
    :goto_4
    invoke-virtual {v7}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getEnumCs()I

    move-result v7

    const/16 v8, 0x13

    if-eq v7, v8, :cond_e

    goto :goto_2

    .line 835
    :cond_e
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "jpeg2000 enumerated colour space 19 (CIEJab) shall not be used"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    if-ne v0, v2, :cond_10

    goto :goto_5

    .line 839
    :cond_10
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Exactly one colour space specification shall have the value 0x01 in the approx field"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 843
    :cond_11
    :goto_5
    invoke-virtual {v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getBpc()I

    move-result p1

    if-lt p1, v2, :cond_13

    invoke-virtual {v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getBpc()I

    move-result p1

    const/16 p2, 0x26

    if-gt p1, p2, :cond_13

    .line 850
    iget-object p1, v4, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->bpcBoxData:[B

    if-nez p1, :cond_12

    goto :goto_6

    .line 851
    :cond_12
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "All colour channels in the jpeg2000 data shall have the same bit-depth"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 844
    :cond_13
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The bit-depth of the jpeg2000 data shall have a value in the range 1 to 38"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 797
    :cond_14
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Only jpx baseline set of features shall be used"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_6
    return-void

    .line 759
    :cond_16
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An image dictionary shall not contain opi key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 756
    :cond_17
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "An image dictionary shall not contain alternates key"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6

    .line 161
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 162
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Crypt filter is not permitted inline image"

    const-string v3, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_2

    .line 163
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_2
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 169
    :goto_0
    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 170
    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 171
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 173
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
    .locals 2

    .line 365
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "Cp1252"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MacRoman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v1, "All non-symbolic TrueType fonts shall specify MacRomanEncoding or WinAnsiEncoding as the value of the Encoding entry in the font dictionary "

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4

    .line 682
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 688
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 689
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 692
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 694
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
    if-eqz v0, :cond_8

    .line 699
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/colors/IccProfile;->getIccDeviceClass([B)Ljava/lang/String;

    move-result-object p1

    .line 700
    const-string v1, "prtr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "mntr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 701
    :cond_5
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Profile stream of outputintent shall be output profile (prtr) or monitor profile (mntr)"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object p1

    .line 705
    const-string v0, "RGB "

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "CMYK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "GRAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    .line 706
    :cond_7
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Output intent color space shall be either gray rgb or cmyk"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method protected checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 649
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PresSteps:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 660
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    .line 661
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    :cond_0
    return-void

    .line 654
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The page dictionary shall not contain pressteps entry"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :cond_2
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "The page dictionary shall not contain aa entry"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7

    const/4 v0, 0x5

    .line 573
    new-array v1, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BleedBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 574
    aget-object v2, v1, v3

    .line 575
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    .line 578
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const/high16 v5, 0x40400000    # 3.0f

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_0

    const/high16 v6, 0x46610000    # 14400.0f

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_0

    cmpg-float v4, v2, v5

    if-ltz v4, :cond_0

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_0

    goto :goto_1

    .line 580
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "The page is less than 3 units or greater than 14400 in either direction"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    .line 669
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 670
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkContentsForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 675
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkAnnotationsForTransparency(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 676
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_0

    .line 672
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method protected checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0

    return-void
.end method

.method protected checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    return-void
.end method

.method protected checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 6

    .line 609
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 611
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FDecodeParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 615
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 616
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Not identity crypt filter is not permitted"

    const-string v3, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_2

    .line 617
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 620
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 622
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 623
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 624
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_2
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 629
    :goto_0
    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 630
    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 631
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 633
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 634
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 635
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 636
    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 637
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 638
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 639
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    :cond_5
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    invoke-direct {p1, v3}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void

    .line 612
    :cond_7
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Stream object dictionary shall not contain the f ffilter or fdecodeparams keys"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkSignature(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 345
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 351
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 352
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 353
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DigestLocation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DigestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 354
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DigestValue:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 355
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Signature references dictionary shall not contain digestlocation digestmethod digestvalue"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
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

    .line 718
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->allowedNamedActions:Ljava/util/Set;

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

    .line 713
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getMaxRealValue()D
    .locals 2

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    return-wide v0
.end method

.method protected getMaxStringLength()I
    .locals 1

    const/16 v0, 0x7fff

    return v0
.end method
