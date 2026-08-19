.class public Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
.super Ljava/lang/Object;
.source "MediaQuery.java"


# instance fields
.field private expressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;",
            ">;"
        }
    .end annotation
.end field

.field private not:Z

.field private only:Z

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;",
            ">;ZZ)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->expressions:Ljava/util/List;

    .line 85
    iput-boolean p3, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->only:Z

    .line 86
    iput-boolean p4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->not:Z

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->ALL:Ljava/lang/String;

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 99
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->expressions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;

    .line 100
    invoke-virtual {v4, p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v4

    if-nez v4, :cond_2

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    move v1, v2

    .line 107
    :cond_4
    iget-boolean p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->not:Z

    if-eqz p1, :cond_5

    xor-int/lit8 v1, v1, 0x1

    :cond_5
    return v1
.end method
