.class public Lcom/itextpdf/commons/actions/processors/UnderAgplITextProductEventProcessor;
.super Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;
.source "UnderAgplITextProductEventProcessor.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUsageType()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "AGPL"

    return-object v0
.end method

.method public onEvent(Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;)V
    .locals 0

    return-void
.end method
