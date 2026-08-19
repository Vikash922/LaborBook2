.class public Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/CertificateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509NameTokenizer"
.end annotation


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 296
    iput-object p1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    const/4 p1, -0x1

    .line 297
    iput p1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .line 306
    iget v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    .line 315
    iget v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 319
    :cond_0
    iget v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 323
    iget-object v2, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v3

    move v4, v2

    .line 325
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_7

    .line 326
    iget-object v5, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    if-nez v2, :cond_1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    if-nez v2, :cond_6

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_5

    goto :goto_4

    .line 349
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 339
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    move v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_7
    :goto_4
    iput v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    .line 356
    iget-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
