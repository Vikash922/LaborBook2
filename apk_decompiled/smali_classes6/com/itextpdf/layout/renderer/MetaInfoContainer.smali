.class public Lcom/itextpdf/layout/renderer/MetaInfoContainer;
.super Ljava/lang/Object;
.source "MetaInfoContainer.java"


# instance fields
.field private final metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;


# direct methods
.method public constructor <init>(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/MetaInfoContainer;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-void
.end method


# virtual methods
.method getMetaInfo()Lcom/itextpdf/commons/actions/contexts/IMetaInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/MetaInfoContainer;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-object v0
.end method
