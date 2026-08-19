.class public Lcom/google/firebase/perf/metrics/Trace;
.super Lcom/google/firebase/perf/application/AppStateUpdateHandler;
.source "Trace.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/firebase/perf/FirebasePerformanceAttributable;
.implements Lcom/google/firebase/perf/session/SessionAwareObject;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field static final CREATOR_DATAONLY:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;

.field private static final traceNameToTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/firebase/perf/util/Clock;

.field private final counterNameToCounterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation
.end field

.field private final customAttributesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:Lcom/google/firebase/perf/util/Timer;

.field private final gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field private final name:Ljava/lang/String;

.field private final parent:Lcom/google/firebase/perf/metrics/Trace;

.field private final sessionAwareObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/session/SessionAwareObject;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Lcom/google/firebase/perf/util/Timer;

.field private final subtraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final transportManager:Lcom/google/firebase/perf/transport/TransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    .line 592
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Trace$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 703
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace$2;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Trace$2;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR_DATAONLY:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/application/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/application/AppStateMonitor;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/firebase/perf/application/AppStateUpdateHandler;-><init>(Lcom/google/firebase/perf/application/AppStateMonitor;)V

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    .line 184
    const-class v1, Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 188
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    .line 189
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    .line 190
    const-class v2, Lcom/google/firebase/perf/metrics/Counter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 191
    const-class v1, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    .line 192
    const-class v1, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/util/Timer;

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    .line 194
    const-class v2, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_1

    .line 196
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 197
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 198
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    goto :goto_1

    .line 201
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/transport/TransportManager;->getInstance()Lcom/google/firebase/perf/transport/TransportManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 202
    new-instance p1, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {p1}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 203
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ZLcom/google/firebase/perf/metrics/Trace$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/perf/metrics/Trace;Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/metrics/Trace;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcom/google/firebase/perf/application/AppStateUpdateHandler;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    .line 131
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    .line 134
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    if-eqz p6, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    new-instance p6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_1
    iput-object p6, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    if-eqz p7, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    new-instance p7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_2
    iput-object p7, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    .line 138
    iget-object p2, p1, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 139
    iget-object p2, p1, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 140
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    .line 141
    iget-object p1, p1, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 105
    invoke-static {}, Lcom/google/firebase/perf/transport/TransportManager;->getInstance()Lcom/google/firebase/perf/transport/TransportManager;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {v3}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    .line 107
    invoke-static {}, Lcom/google/firebase/perf/application/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/application/AppStateMonitor;

    move-result-object v4

    .line 108
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;)V
    .locals 6

    .line 155
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V
    .locals 0

    .line 170
    invoke-direct {p0, p4}, Lcom/google/firebase/perf/application/AppStateUpdateHandler;-><init>(Lcom/google/firebase/perf/application/AppStateMonitor;)V

    .line 57
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    .line 171
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    .line 174
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    .line 175
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    .line 176
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 177
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    .line 179
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 632
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    .line 638
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 640
    const-string v1, "Exceeds max limit of number of attributes - %d"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;->validateAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 633
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 634
    const-string v1, "Trace \'%s\' has been stopped"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1

    .line 99
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized getTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 3

    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    monitor-enter v0

    .line 421
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v2, :cond_0

    .line 423
    new-instance v2, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized getTrace(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 9

    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    monitor-enter v0

    .line 437
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v2, :cond_0

    .line 439
    new-instance v2, Lcom/google/firebase/perf/metrics/Trace;

    .line 441
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v8

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    .line 442
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Counter;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/google/firebase/perf/metrics/Counter;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/metrics/Counter;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 283
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    .line 285
    iget-object v1, v0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-nez v1, :cond_1

    .line 286
    iput-object p1, v0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    :cond_1
    return-void
.end method

.method static startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1

    .line 457
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz p0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    :cond_0
    return-object p0
.end method

.method static stopTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 2

    .line 475
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->traceNameToTraceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 478
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Trace \'%s\' is started but not stopped when it is destructed!"

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 494
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->incrementTsnsCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 498
    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method getCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    return-object v0
.end method

.method getEndTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method public getLongMetric(Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/Counter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/Counter;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    return-object v0
.end method

.method getSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    monitor-enter v0

    .line 718
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/session/PerfSession;

    if-eqz v3, :cond_0

    .line 723
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStartTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method getSubtraces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    return-object v0
.end method

.method hasStarted()Z
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementMetric(Ljava/lang/String;J)V
    .locals 2

    .line 332
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;->validateMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p3, "Cannot increment metric \'%s\'. Metric name is invalid.(%s)"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s not started"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s been stopped"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 350
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/Counter;->increment(J)V

    .line 352
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 353
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Counter;->getCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 352
    const-string p3, "Incrementing metric \'%s\' to %d on trace \'%s\'"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method isActive()Z
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStopped()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 617
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 618
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;->checkAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Setting attribute \'%s\' to \'%s\' on trace \'%s\'"

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 622
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 622
    const-string v2, "Can not set attribute \'%s\' with value \'%s\' (%s)"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putMetric(Ljava/lang/String;J)V
    .locals 1

    .line 388
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;->validateMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p3, "Cannot set value for metric \'%s\'. Metric name is invalid.(%s)"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s not started"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    sget-object p2, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s been stopped"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 406
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->obtainOrCreateCounterByName(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Counter;

    move-result-object v0

    .line 407
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/Counter;->setCount(J)V

    .line 408
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Setting metric \'%s\' to \'%s\' on trace \'%s\'"

    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object p1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Can\'t remove a attribute from a Trace that\'s stopped."

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;)V

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 3

    .line 210
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Trace feature is disabled."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;->validateTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    sget-object v1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Cannot start trace \'%s\'. Trace name is invalid.(%s)"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Trace \'%s\' has already started, should not start again!"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    .line 229
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->registerForAppState()V

    .line 231
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/session/SessionManager;->registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->updateSession(Lcom/google/firebase/perf/session/PerfSession;)V

    .line 237
    invoke-virtual {v0}, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_3
    return-void
.end method

.method startStage(Ljava/lang/String;)V
    .locals 10

    .line 297
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v4

    .line 298
    invoke-direct {p0, v4}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    .line 299
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    new-instance v9, Lcom/google/firebase/perf/metrics/Trace;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Lcom/google/firebase/perf/metrics/Trace;Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Trace \'%s\' has not been started so unable to stop!"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Trace \'%s\' has already stopped, should not stop again!"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->sessionAwareObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/SessionManager;->unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->unregisterForAppState()V

    .line 257
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    .line 258
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    if-nez v1, :cond_3

    .line 259
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    .line 260
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    new-instance v1, Lcom/google/firebase/perf/metrics/TraceMetricBuilder;

    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/TraceMetricBuilder;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/TraceMetricBuilder;->build()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/transport/TransportManager;->log(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 263
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->gaugeManager:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    .line 265
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/session/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    goto :goto_0

    .line 268
    :cond_2
    sget-object v0, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Trace name is empty, no log is sent to server"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method stopStage()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->setEndTimeOfLastStage(Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public updateSession(Lcom/google/firebase/perf/session/PerfSession;)V
    .locals 1

    if-nez p1, :cond_0

    .line 81
    sget-object p1, Lcom/google/firebase/perf/metrics/Trace;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Unable to add new SessionId to the Trace. Continuing without it."

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 576
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->parent:Lcom/google/firebase/perf/metrics/Trace;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 577
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->subtraces:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 579
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->counterNameToCounterMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 580
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->startTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 581
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->endTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 582
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    monitor-enter p2

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->sessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 584
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
