.class Lcom/itextpdf/commons/actions/producer/CopyrightToPlaceholderPopulator;
.super Ljava/lang/Object;
.source "CopyrightToPlaceholderPopulator.java"

# interfaces
.implements Lcom/itextpdf/commons/actions/producer/IPlaceholderPopulator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public populate(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_2

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 p2, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    .line 68
    invoke-virtual {v0}, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;->getEvent()Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getProductData()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/commons/actions/data/ProductData;->getToCopyrightYear()I

    move-result v0

    if-le v0, p2, :cond_0

    move p2, v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "copyrightTo"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid usage of placeholder \"{0}\": any configuration is forbidden"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
