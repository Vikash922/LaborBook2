.class public Lcom/itextpdf/commons/actions/contexts/GenericContext;
.super Ljava/lang/Object;
.source "GenericContext.java"

# interfaces
.implements Lcom/itextpdf/commons/actions/contexts/IContext;


# instance fields
.field private final supportedProducts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/commons/actions/contexts/GenericContext;->supportedProducts:Ljava/util/Set;

    .line 65
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public isAllowed(Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/commons/actions/contexts/GenericContext;->supportedProducts:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itextpdf/commons/actions/AbstractContextBasedITextEvent;->getProductName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
