.class public Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;
.super Ljava/lang/Object;
.source "ExternalBlankSignatureContainer.java"

# interfaces
.implements Lcom/itextpdf/signatures/IExternalSignatureContainer;


# instance fields
.field private sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 79
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 80
    iget-object p1, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SubFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method


# virtual methods
.method public modifySigningDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/signatures/ExternalBlankSignatureContainer;->sigDic:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public sign(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 85
    new-array p1, p1, [B

    return-object p1
.end method
