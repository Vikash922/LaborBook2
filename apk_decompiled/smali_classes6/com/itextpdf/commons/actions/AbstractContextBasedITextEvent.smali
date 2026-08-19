.class public abstract Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;
.super Lcom/itextpdf/commons/actions/AbstractProductITextEvent;
.source "AbstractContextBasedITextEvent.java"


# instance fields
.field private metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/commons/actions/data/ProductData;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/actions/AbstractProductITextEvent;-><init>(Lcom/itextpdf/commons/actions/data/ProductData;)V

    .line 44
    iput-object p2, p0, Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-void
.end method


# virtual methods
.method public getClassFromContext()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getMetaInfo()Lcom/itextpdf/commons/actions/contexts/IMetaInfo;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-object v0
.end method

.method public setMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    const/4 p1, 0x1

    return p1
.end method
