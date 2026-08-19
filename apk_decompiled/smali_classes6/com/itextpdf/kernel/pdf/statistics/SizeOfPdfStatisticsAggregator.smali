.class public Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;
.super Lcom/itextpdf/commons/actions/AbstractStatisticsAggregator;
.source "SizeOfPdfStatisticsAggregator.java"


# static fields
.field private static final DOCUMENT_SIZES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEASURE_COEFFICIENT:J = 0x400L

.field private static final SIZE_128KB:J = 0x20000L

.field private static final SIZE_128MB:J = 0x8000000L

.field private static final SIZE_16MB:J = 0x1000000L

.field private static final SIZE_1MB:J = 0x100000L

.field private static final SORTED_UPPER_BOUNDS_OF_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_FOR_128KB:Ljava/lang/String; = "<128kb"

.field private static final STRING_FOR_128MB:Ljava/lang/String; = "16mb-128mb"

.field private static final STRING_FOR_16MB:Ljava/lang/String; = "1mb-16mb"

.field private static final STRING_FOR_1MB:Ljava/lang/String; = "128kb-1mb"

.field private static final STRING_FOR_INF:Ljava/lang/String; = "128mb+"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final numberOfDocuments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Ljava/lang/Long;

    const-wide/32 v1, 0x20000

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-wide/32 v3, 0x1000000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-wide/32 v4, 0x8000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->SORTED_UPPER_BOUNDS_OF_SIZES:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v5, "<128kb"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "128kb-1mb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "1mb-16mb"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "16mb-128mb"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->DOCUMENT_SIZES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/AbstractStatisticsAggregator;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->lock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->numberOfDocuments:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$merge$0(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public aggregate(Lcom/itextpdf/commons/actions/AbstractStatisticsEvent;)V
    .locals 6

    .line 80
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsEvent;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsEvent;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsEvent;->getAmountOfBytes()J

    move-result-wide v0

    .line 84
    const-string p1, "128mb+"

    .line 85
    sget-object v2, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->SORTED_UPPER_BOUNDS_OF_SIZES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1

    .line 87
    sget-object p1, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->DOCUMENT_SIZES:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->numberOfDocuments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    if-nez v1, :cond_3

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->numberOfDocuments:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public merge(Lcom/itextpdf/commons/actions/AbstractStatisticsAggregator;)V
    .locals 3

    .line 115
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->numberOfDocuments:Ljava/util/Map;

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->numberOfDocuments:Ljava/util/Map;

    new-instance v2, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/itextpdf/commons/utils/MapUtil;->merge(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiFunction;)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public retrieveAggregation()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsAggregator;->numberOfDocuments:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
