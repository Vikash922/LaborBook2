.class Lcom/itextpdf/forms/xfa/InverseStore;
.super Ljava/lang/Object;
.source "InverseStore.java"


# instance fields
.field protected follow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected part:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/InverseStore;->follow:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDefaultName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    .line 66
    :goto_0
    iget-object v0, v0, Lcom/itextpdf/forms/xfa/InverseStore;->follow:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 69
    :cond_0
    check-cast v0, Lcom/itextpdf/forms/xfa/InverseStore;

    goto :goto_0
.end method

.method public isSimilar(Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x5b

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v0, v2

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
