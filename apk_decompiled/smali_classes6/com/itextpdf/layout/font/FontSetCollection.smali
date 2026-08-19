.class Lcom/itextpdf/layout/font/FontSetCollection;
.super Ljava/util/AbstractCollection;
.source "FontSetCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lcom/itextpdf/layout/font/FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final additional:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/itextpdf/layout/font/FontSetCollection;->primary:Ljava/util/Collection;

    .line 56
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontSetCollection;->additional:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/layout/font/FontSetCollection;)Ljava/util/Collection;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/itextpdf/layout/font/FontSetCollection;->primary:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/itextpdf/layout/font/FontSetCollection;)Ljava/util/Collection;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/itextpdf/layout/font/FontSetCollection;->additional:Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/itextpdf/layout/font/FontSetCollection$1;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/font/FontSetCollection$1;-><init>(Lcom/itextpdf/layout/font/FontSetCollection;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSetCollection;->primary:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontSetCollection;->additional:Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
