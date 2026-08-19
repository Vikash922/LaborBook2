.class Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;
.super Ljava/util/AbstractMap;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dataset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$DatasetIterator;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-void
.end method

.method static synthetic access$500(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object p0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 474
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 479
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object v0
.end method
