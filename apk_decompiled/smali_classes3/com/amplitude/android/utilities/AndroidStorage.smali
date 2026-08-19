.class public final Lcom/amplitude/android/utilities/AndroidStorage;
.super Ljava/lang/Object;
.source "AndroidStorage.kt"

# interfaces
.implements Lcom/amplitude/core/Storage;
.implements Lcom/amplitude/core/utilities/EventsFileStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/utilities/AndroidStorage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0001LB/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010#\u001a\u00020\u0006H\u0002JN\u0010$\u001a@\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000fj\u0004\u0018\u0001`\u00172\u0006\u0010%\u001a\u00020\u0006H\u0016J\u0019\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020(H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)J\u0008\u0010*\u001a\u00020\u0006H\u0002J(\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016J\u0012\u00105\u001a\u0004\u0018\u00010\u00062\u0006\u00106\u001a\u000207H\u0016J\u000e\u00108\u001a\u0008\u0012\u0004\u0012\u00020(09H\u0016J\u0010\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u0006H\u0016J\u0019\u0010<\u001a\u00020\u00162\u0006\u00106\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=J\u0010\u0010>\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0006H\u0016J\u0010\u0010?\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0006H\u0016J\u0011\u0010A\u001a\u00020\u0016H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010BJ\u0018\u0010C\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u00062\u0006\u0010D\u001a\u00020EH\u0016J!\u0010F\u001a\u00020\u00162\u0006\u00106\u001a\u0002072\u0006\u0010G\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010HJ\u0019\u0010I\u001a\u00020\u00162\u0006\u0010J\u001a\u00020\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010KR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000RT\u0010\r\u001aH\u0012\u0004\u0012\u00020\u0006\u0012>\u0012<\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00160\u000fj\u0002`\u00170\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001dX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/AndroidStorage;",
        "Lcom/amplitude/core/Storage;",
        "Lcom/amplitude/core/utilities/EventsFileStorage;",
        "context",
        "Landroid/content/Context;",
        "storageKey",
        "",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "prefix",
        "diagnostics",
        "Lcom/amplitude/core/utilities/Diagnostics;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V",
        "eventCallbacksMap",
        "",
        "Lkotlin/Function3;",
        "Lcom/amplitude/core/events/BaseEvent;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "status",
        "message",
        "",
        "Lcom/amplitude/core/EventCallBack;",
        "eventsFile",
        "Lcom/amplitude/core/utilities/EventsFileManager;",
        "getPrefix$android_release",
        "()Ljava/lang/String;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences$android_release",
        "()Landroid/content/SharedPreferences;",
        "storageDirectory",
        "Ljava/io/File;",
        "getStorageKey",
        "getDir",
        "getEventCallback",
        "insertId",
        "getEventsString",
        "content",
        "",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPrefix",
        "getResponseHandler",
        "Lcom/amplitude/core/utilities/ResponseHandler;",
        "eventPipeline",
        "Lcom/amplitude/core/platform/EventPipeline;",
        "configuration",
        "Lcom/amplitude/core/Configuration;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "read",
        "key",
        "Lcom/amplitude/core/Storage$Constants;",
        "readEventsContent",
        "",
        "releaseFile",
        "filePath",
        "remove",
        "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeEventCallback",
        "removeFile",
        "",
        "rollover",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "splitEventFile",
        "events",
        "Lorg/json/JSONArray;",
        "write",
        "value",
        "(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeEvent",
        "event",
        "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/amplitude/android/utilities/AndroidStorage$Companion;

.field public static final STORAGE_PREFIX:Ljava/lang/String; = "amplitude-android"


# instance fields
.field private final diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

.field private final eventCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/amplitude/core/events/BaseEvent;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

.field private final logger:Lcom/amplitude/common/Logger;

.field private final prefix:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final storageDirectory:Ljava/io/File;

.field private final storageKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/android/utilities/AndroidStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/utilities/AndroidStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/utilities/AndroidStorage;->Companion:Lcom/amplitude/android/utilities/AndroidStorage$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storageKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnostics"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/amplitude/android/utilities/AndroidStorage;->storageKey:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amplitude/android/utilities/AndroidStorage;->logger:Lcom/amplitude/common/Logger;

    .line 28
    iput-object p4, p0, Lcom/amplitude/android/utilities/AndroidStorage;->prefix:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/amplitude/android/utilities/AndroidStorage;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    .line 36
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/amplitude/android/utilities/AndroidStorage;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/16 v0, 0x2d

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    const-string v1, "context.getSharedPrefere\u2026y\", Context.MODE_PRIVATE)"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/amplitude/android/utilities/AndroidStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    invoke-direct {p0}, Lcom/amplitude/android/utilities/AndroidStorage;->getDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const-string p1, "context.getDir(getDir(), Context.MODE_PRIVATE)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/amplitude/android/utilities/AndroidStorage;->storageDirectory:Ljava/io/File;

    .line 39
    new-instance p1, Lcom/amplitude/core/utilities/EventsFileManager;

    new-instance v0, Lcom/amplitude/android/utilities/AndroidKVS;

    invoke-direct {v0, p4}, Lcom/amplitude/android/utilities/AndroidKVS;-><init>(Landroid/content/SharedPreferences;)V

    move-object v5, v0

    check-cast v5, Lcom/amplitude/id/utilities/KeyValueStore;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/amplitude/core/utilities/EventsFileManager;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/amplitude/id/utilities/KeyValueStore;Lcom/amplitude/common/Logger;Lcom/amplitude/core/utilities/Diagnostics;)V

    iput-object p1, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventCallbacksMap:Ljava/util/Map;

    return-void
.end method

.method private final getDir()Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    const-string v1, "-disk-queue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    const-string v0, "amplitude-disk-queue"

    return-object v0
.end method

.method private final getPrefix()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "amplitude-android"

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getEventCallback(Ljava/lang/String;)Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/amplitude/core/events/BaseEvent;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "insertId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function3;

    return-object p1
.end method

.method public getEventsString(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->getEventString(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPrefix$android_release()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHandler(Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/amplitude/core/utilities/ResponseHandler;
    .locals 8

    const-string v0, "eventPipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/amplitude/core/utilities/FileResponseHandler;

    .line 89
    move-object v2, p0

    check-cast v2, Lcom/amplitude/core/utilities/EventsFileStorage;

    .line 94
    iget-object v7, p0, Lcom/amplitude/android/utilities/AndroidStorage;->logger:Lcom/amplitude/common/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 88
    invoke-direct/range {v1 .. v7}, Lcom/amplitude/core/utilities/FileResponseHandler;-><init>(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/amplitude/common/Logger;)V

    check-cast v0, Lcom/amplitude/core/utilities/ResponseHandler;

    return-object v0
.end method

.method public final getSharedPreferences$android_release()Landroid/content/SharedPreferences;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getStorageKey()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->storageKey:Ljava/lang/String;

    return-object v0
.end method

.method public read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/amplitude/core/Storage$Constants;->getRawVal()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readEventsContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/EventsFileManager;->read()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public releaseFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->release(Ljava/lang/String;)V

    return-void
.end method

.method public remove(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/Storage$Constants;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/amplitude/android/utilities/AndroidStorage;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amplitude/core/Storage$Constants;->getRawVal()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public removeEventCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "insertId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->remove(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public rollover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->rollover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public splitEventFile(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->splitFile(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public write(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/Storage$Constants;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/amplitude/android/utilities/AndroidStorage;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amplitude/core/Storage$Constants;->getRawVal()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public writeEvent(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/events/BaseEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;

    iget v1, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;

    invoke-direct {v0, p0, p2}, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;-><init>(Lcom/amplitude/android/utilities/AndroidStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    iget-object v0, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iget-object p2, p0, Lcom/amplitude/android/utilities/AndroidStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    sget-object v2, Lcom/amplitude/core/utilities/JSONUtil;->INSTANCE:Lcom/amplitude/core/utilities/JSONUtil;

    invoke-virtual {v2, p1}, Lcom/amplitude/core/utilities/JSONUtil;->eventToString(Lcom/amplitude/core/events/BaseEvent;)Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/utilities/AndroidStorage$writeEvent$1;->label:I

    invoke-virtual {p2, v2, v0}, Lcom/amplitude/core/utilities/EventsFileManager;->storeEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 44
    :goto_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 45
    :cond_4
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getInsertId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 46
    :cond_5
    iget-object v0, v0, Lcom/amplitude/android/utilities/AndroidStorage;->eventCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function3;

    .line 49
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
