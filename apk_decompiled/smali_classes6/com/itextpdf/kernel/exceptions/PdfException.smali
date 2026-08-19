.class public Lcom/itextpdf/kernel/exceptions/PdfException;
.super Lcom/itextpdf/commons/exceptions/ITextException;
.source "PdfException.java"


# instance fields
.field private messageParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/exceptions/ITextException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 90
    iput-object p2, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/commons/exceptions/ITextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iput-object p3, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 79
    const-string v0, "Unknown PdfException."

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->messageParams:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/commons/exceptions/ITextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/exceptions/PdfException;->getMessageParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/itextpdf/commons/exceptions/ITextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageParams()[Ljava/lang/Object;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->messageParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->messageParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->messageParams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public varargs setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;
    .locals 1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/exceptions/PdfException;->messageParams:Ljava/util/List;

    .line 132
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method
