.class public Lcom/itextpdf/forms/xfdf/IdsObject;
.super Ljava/lang/Object;
.source "IdsObject.java"


# instance fields
.field private modified:Ljava/lang/String;

.field private original:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModified()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/IdsObject;->modified:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/IdsObject;->original:Ljava/lang/String;

    return-object v0
.end method

.method public setModified(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/IdsObject;->modified:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginal(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/IdsObject;->original:Ljava/lang/String;

    return-object p0
.end method
