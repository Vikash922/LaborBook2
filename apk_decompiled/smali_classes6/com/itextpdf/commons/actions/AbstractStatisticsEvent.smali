.class public abstract Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;
.super Lcom/itextpdf/commons/actions/AbstractProductITextEvent;
.source "AbstractStatisticsEvent.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/commons/actions/data/ProductData;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/actions/AbstractProductITextEvent;-><init>(Lcom/itextpdf/commons/actions/data/ProductData;)V

    return-void
.end method


# virtual methods
.method public createStatisticsAggregatorFromName(Ljava/lang/String;)Lcom/itextpdf/commons/actions/AbstractStatisticsAggregator;
    .locals 2

    .line 58
    sget-object v0, Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Statistics name {0} is invalid. Cannot find corresponding statistics aggregator."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getStatisticsNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
