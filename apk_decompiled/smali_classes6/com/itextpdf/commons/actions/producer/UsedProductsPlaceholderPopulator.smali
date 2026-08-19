.class Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;
.super Lcom/itextpdf/commons/actions/producer/AbstractFormattedPlaceholderPopulator;
.source "UsedProductsPlaceholderPopulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;
    }
.end annotation


# static fields
.field private static final PRODUCTS_SEPARATOR:Ljava/lang/String; = ", "

.field private static final PRODUCT_NAME:C = 'P'

.field private static final USAGE_TYPE:C = 'T'

.field private static final VERSION:C = 'V'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/producer/AbstractFormattedPlaceholderPopulator;-><init>()V

    return-void
.end method

.method private formatLetter(CLcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p2}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;->getProductName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x56

    if-ne p1, v0, :cond_1

    .line 134
    invoke-virtual {p2}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;->getVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 136
    invoke-virtual {p2}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;->getProductUsageType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 139
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 138
    const-string v0, "Pattern contains unexpected character {0}"

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private formatProduct(Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v1, 0x0

    .line 117
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 118
    aget-char v2, p2, v1

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 119
    invoke-virtual {p0, v1, v0, p2}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;->attachQuotedString(ILjava/lang/StringBuilder;[C)I

    move-result v1

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p0, v2}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    aget-char v2, p2, v1

    invoke-direct {p0, v2, p1}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;->formatLetter(CLcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_1
    aget-char v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public populate(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
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

    if-eqz p2, :cond_4

    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    .line 94
    new-instance v2, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;

    invoke-direct {v2, v1}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;-><init>(Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;

    .line 99
    invoke-direct {p0, v1, p2}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;->formatProduct(Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator$ProductRepresentation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 104
    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "usedProducts"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid usage of placeholder \"{0}\": format is required"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
