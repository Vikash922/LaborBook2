.class public final Lcom/itextpdf/commons/actions/producer/ProducerBuilder;
.super Lcom/itextpdf/commons/actions/AbstractITextConfigurationEvent;
.source "ProducerBuilder.java"


# static fields
.field private static final COPYRIGHT_SINCE:Ljava/lang/String; = "copyrightSince"

.field private static final COPYRIGHT_TO:Ljava/lang/String; = "copyrightTo"

.field private static final CURRENT_DATE:Ljava/lang/String; = "currentDate"

.field private static final FORMAT_DELIMITER:C = ':'

.field private static final INSTANCE:Lcom/itextpdf/commons/actions/producer/ProducerBuilder;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MODIFIED_USING:Ljava/lang/String; = "; modified using "

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PATTERN_STRING:Ljava/lang/String; = "\\$\\{([^}]*)\\}"

.field private static final PLACEHOLDER_POPULATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/commons/actions/producer/IPlaceholderPopulator;",
            ">;"
        }
    .end annotation
.end field

.field private static final USED_PRODUCTS:Ljava/lang/String; = "usedProducts"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->LOGGER:Lorg/slf4j/Logger;

    .line 49
    new-instance v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;

    invoke-direct {v0}, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;-><init>()V

    sput-object v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->INSTANCE:Lcom/itextpdf/commons/actions/producer/ProducerBuilder;

    .line 68
    const-string v0, "\\$\\{([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->PATTERN:Ljava/util/regex/Pattern;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    new-instance v1, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;

    invoke-direct {v1}, Lcom/itextpdf/commons/actions/producer/CurrentDatePlaceholderPopulator;-><init>()V

    const-string v2, "currentDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;

    invoke-direct {v1}, Lcom/itextpdf/commons/actions/producer/UsedProductsPlaceholderPopulator;-><init>()V

    const-string v2, "usedProducts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Lcom/itextpdf/commons/actions/producer/CopyrightSincePlaceholderPopulator;

    invoke-direct {v1}, Lcom/itextpdf/commons/actions/producer/CopyrightSincePlaceholderPopulator;-><init>()V

    const-string v2, "copyrightSince"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/itextpdf/commons/actions/producer/CopyrightToPlaceholderPopulator;

    invoke-direct {v1}, Lcom/itextpdf/commons/actions/producer/CopyrightToPlaceholderPopulator;-><init>()V

    const-string v2, "copyrightTo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->PLACEHOLDER_POPULATORS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/AbstractITextConfigurationEvent;-><init>()V

    return-void
.end method

.method private static buildProducer(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 129
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    invoke-virtual {v0}, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;->getProducerLine()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0, p0}, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->populatePlaceholders(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No events were registered for the document!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static modifyProducer(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;

    .line 101
    instance-of v2, v1, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    if-eqz v2, :cond_0

    .line 102
    check-cast v1, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    sget-object v2, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->INSTANCE:Lcom/itextpdf/commons/actions/producer/ProducerBuilder;

    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->getActiveProcessor(Ljava/lang/String;)Lcom/itextpdf/commons/actions/processors/ITextProductEventProcessor;

    move-result-object v2

    .line 105
    new-instance v3, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;

    invoke-interface {v2}, Lcom/itextpdf/commons/actions/processors/ITextProductEventProcessor;->getUsageType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/itextpdf/commons/actions/processors/ITextProductEventProcessor;->getProducer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v4, v2}, Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;-><init>(Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->buildProducer(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; modified using "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method private static populatePlaceholders(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/commons/actions/confirmations/ConfirmedEventWrapper;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 147
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/4 v4, 0x1

    .line 151
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3a

    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v7, v4

    .line 159
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    .line 162
    :goto_1
    sget-object v6, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->PLACEHOLDER_POPULATORS:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/commons/actions/producer/IPlaceholderPopulator;

    if-nez v6, :cond_1

    .line 164
    sget-object v4, Lcom/itextpdf/commons/actions/producer/ProducerBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Unknown placeholder {0} was ignored"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-interface {v6, p1, v4}, Lcom/itextpdf/commons/actions/producer/IPlaceholderPopulator;->populate(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doAction()V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration events for util internal purposes are not expected to be sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
