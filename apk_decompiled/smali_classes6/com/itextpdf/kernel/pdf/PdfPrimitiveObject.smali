.class public abstract Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.super Lcom/itextpdf/kernel/pdf/PdfObject;
.source "PdfPrimitiveObject.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected content:[B

.field protected directOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    .line 66
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->directOnly:Z

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    return-void
.end method


# virtual methods
.method protected compareContent(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)I
    .locals 3

    const/4 v0, 0x0

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    array-length v1, v1

    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    aget-byte v2, v2, v0

    if-le v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    array-length v0, v0

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    .line 117
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;

    .line 118
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    if-eqz p1, :cond_0

    .line 119
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    :cond_0
    return-void
.end method

.method protected abstract generateContent()V
.end method

.method protected final getInternalContent()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->generateContent()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    return-object v0
.end method

.method protected hasContent()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->directOnly:Z

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    const-class p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 98
    const-string p2, "DirectOnly object cannot be indirect"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object p0
.end method

.method public setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->directOnly:Z

    if-nez v0, :cond_0

    .line 106
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 108
    :cond_0
    const-class p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 109
    const-string v0, "DirectOnly object cannot be indirect"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
