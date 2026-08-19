.class Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;
.super Ljava/lang/Object;
.source "FontSelectorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/font/FontSelectorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontSetSelectors"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fontSetSize:I

.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/font/FontSelectorKey;",
            "Lcom/itextpdf/layout/font/FontSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    const-class v0, Lcom/itextpdf/layout/font/FontSelectorCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->map:Ljava/util/Map;

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->fontSetSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/layout/font/FontSelectorCache$1;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;-><init>()V

    return-void
.end method


# virtual methods
.method update(Lcom/itextpdf/layout/font/FontSet;)Z
    .locals 2

    .line 122
    iget v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->fontSetSize:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontSet;->size()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->fontSetSize:I

    const/4 p1, 0x1

    return p1
.end method
