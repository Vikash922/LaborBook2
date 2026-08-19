.class public abstract Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;
.super Ljava/lang/Object;
.source "AbstractITextProductEventProcessor.java"

# interfaces
.implements Lcom/itextpdf/commons/actions/processors/ITextProductEventProcessor;


# instance fields
.field private final productName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;->productName:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Product name can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getProducer()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "iText\u00ae ${usedProducts:P V (T \'version\')} \u00a9${copyrightSince}-${copyrightTo} iText Group NV"

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUsageType()Ljava/lang/String;
.end method

.method public abstract onEvent(Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;)V
.end method
