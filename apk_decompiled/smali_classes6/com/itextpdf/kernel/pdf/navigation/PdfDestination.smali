.class public abstract Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfDestination.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public static makeDestination(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfString;)V

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 70
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfNamedDestination;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfNamedDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-object v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 72
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-object v0

    .line 82
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-object v0

    .line 86
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-object v0

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 89
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract getDestinationPage(Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfObject;"
        }
    .end annotation
.end method
