.class public Lcom/itextpdf/pdfa/checker/PdfA3Checker;
.super Lcom/itextpdf/pdfa/checker/PdfA2Checker;
.source "PdfA3Checker.java"


# static fields
.field protected static final allowedAFRelationships:Ljava/util/Set;
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
    .locals 4

    .line 70
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Source:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Data:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Alternative:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Supplement:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Unspecified:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v2

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA3Checker;->allowedAFRelationships:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    return-void
.end method


# virtual methods
.method protected checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 90
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 91
    sget-object v1, Lcom/itextpdf/pdfa/checker/PdfA3Checker;->allowedAFRelationships:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Desc:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 107
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Embedded file shall contain params key with valid moddate key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Embedded file shall contain params key with dictionary as value"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    const-class p1, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 121
    const-string v0, "Embedded file should contain params key "

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Mime type shall be specified using the subtype key of the file specification stream dictionary"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_4
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "Ef key of file specification dictionary shall contain dictionary with valid f key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_5
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "File specification dictionary shall contain f key and uf key"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    return-void

    .line 92
    :cond_7
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string v0, "File specification dictionary shall contain one of the predefined afrelationship keys"

    invoke-direct {p1, v0}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
