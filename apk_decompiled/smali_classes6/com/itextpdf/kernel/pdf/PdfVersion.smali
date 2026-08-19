.class public Lcom/itextpdf/kernel/pdf/PdfVersion;
.super Ljava/lang/Object;
.source "PdfVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/kernel/pdf/PdfVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final PDF_1_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_1:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_2:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_3:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_5:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_6:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field public static final PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field private static final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->values:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v2

    sput-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 59
    invoke-static {v0, v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v2

    sput-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_1:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 v2, 0x2

    .line 60
    invoke-static {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v3

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_2:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 v3, 0x3

    .line 61
    invoke-static {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v3

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_3:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 v3, 0x4

    .line 62
    invoke-static {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v3

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 v3, 0x5

    .line 63
    invoke-static {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v3

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_5:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 v3, 0x6

    .line 64
    invoke-static {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v3

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_6:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 v3, 0x7

    .line 65
    invoke-static {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 66
    invoke-static {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->major:I

    .line 78
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->minor:I

    return-void
.end method

.method private static createPdfVersion(II)Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 1

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;-><init>(II)V

    .line 139
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->values:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static fromPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 3

    .line 114
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 115
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->toPdfName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided pdf version was not found."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 3

    .line 98
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 99
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided pdf version was not found."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->major:I

    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfVersion;->major:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->minor:I

    iget p1, p1, Lcom/itextpdf/kernel/pdf/PdfVersion;->minor:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toPdfName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3

    .line 87
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{0}.{1}"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PDF-{0}.{1}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
