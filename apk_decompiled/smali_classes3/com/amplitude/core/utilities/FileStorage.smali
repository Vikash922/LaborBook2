.class public final Lcom/amplitude/core/utilities/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.kt"

# interfaces
.implements Lcom/amplitude/core/Storage;
.implements Lcom/amplitude/core/utilities/EventsFileStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/utilities/FileStorage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001EB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJN\u0010\u001d\u001a@\u0012\u0004\u0012\u00020\u000e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\rj\u0004\u0018\u0001`\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0019\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\u0004H\u0002J(\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u000200H\u0016J\u000e\u00101\u001a\u0008\u0012\u0004\u0012\u00020!02H\u0016J\u0010\u00103\u001a\u00020\u00142\u0006\u00104\u001a\u00020\u0004H\u0016J\u0019\u00105\u001a\u00020\u00142\u0006\u0010/\u001a\u000200H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00106J\u0010\u00107\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0010\u00108\u001a\u0002092\u0006\u00104\u001a\u00020\u0004H\u0016J\u0011\u0010:\u001a\u00020\u0014H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;J\u0018\u0010<\u001a\u00020\u00142\u0006\u00104\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>H\u0016J!\u0010?\u001a\u00020\u00142\u0006\u0010/\u001a\u0002002\u0006\u0010@\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJ\u0019\u0010B\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010DR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000RT\u0010\u000b\u001aH\u0012\u0004\u0012\u00020\u0004\u0012>\u0012<\u0012\u0004\u0012\u00020\u000e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u00150\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006F"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/FileStorage;",
        "Lcom/amplitude/core/Storage;",
        "Lcom/amplitude/core/utilities/EventsFileStorage;",
        "storageKey",
        "",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "prefix",
        "diagnostics",
        "Lcom/amplitude/core/utilities/Diagnostics;",
        "(Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V",
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
        "propertiesFile",
        "Lcom/amplitude/id/utilities/PropertiesFile;",
        "storageDirectory",
        "Ljava/io/File;",
        "storageDirectoryEvents",
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
        "core"
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
.field public static final Companion:Lcom/amplitude/core/utilities/FileStorage$Companion;

.field public static final STORAGE_PREFIX:Ljava/lang/String; = "amplitude-kotlin"


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

.field private final propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

.field private final storageDirectory:Ljava/io/File;

.field private final storageDirectoryEvents:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/utilities/FileStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/utilities/FileStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/utilities/FileStorage;->Companion:Lcom/amplitude/core/utilities/FileStorage$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V
    .locals 7

    const-string/jumbo v0, "storageKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnostics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/amplitude/core/utilities/FileStorage;->logger:Lcom/amplitude/common/Logger;

    .line 20
    iput-object p3, p0, Lcom/amplitude/core/utilities/FileStorage;->prefix:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/amplitude/core/utilities/FileStorage;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    .line 27
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/tmp/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amplitude/core/utilities/FileStorage;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amplitude/core/utilities/FileStorage;->storageDirectory:Ljava/io/File;

    .line 28
    new-instance v2, Ljava/io/File;

    const-string v0, "events"

    invoke-direct {v2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/amplitude/core/utilities/FileStorage;->storageDirectoryEvents:Ljava/io/File;

    .line 30
    new-instance v0, Lcom/amplitude/id/utilities/PropertiesFile;

    invoke-direct {p0}, Lcom/amplitude/core/utilities/FileStorage;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, p3, p1, v1, v3}, Lcom/amplitude/id/utilities/PropertiesFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/common/Logger;)V

    iput-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    .line 31
    new-instance p3, Lcom/amplitude/core/utilities/EventsFileManager;

    move-object v4, v0

    check-cast v4, Lcom/amplitude/id/utilities/KeyValueStore;

    move-object v1, p3

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amplitude/core/utilities/EventsFileManager;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/amplitude/id/utilities/KeyValueStore;Lcom/amplitude/common/Logger;Lcom/amplitude/core/utilities/Diagnostics;)V

    iput-object p3, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    .line 32
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/amplitude/core/utilities/FileStorage;->eventCallbacksMap:Ljava/util/Map;

    .line 35
    invoke-virtual {v0}, Lcom/amplitude/id/utilities/PropertiesFile;->load()V

    return-void
.end method

.method private final getPrefix()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "amplitude-kotlin"

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getEventCallback(Ljava/lang/String;)Lkotlin/jvm/functions/Function3;
    .locals 2
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

    .line 101
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventCallbacksMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function3;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 77
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->getEventString(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 86
    new-instance v0, Lcom/amplitude/core/utilities/FileResponseHandler;

    .line 87
    move-object v2, p0

    check-cast v2, Lcom/amplitude/core/utilities/EventsFileStorage;

    .line 92
    iget-object v7, p0, Lcom/amplitude/core/utilities/FileStorage;->logger:Lcom/amplitude/common/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 86
    invoke-direct/range {v1 .. v7}, Lcom/amplitude/core/utilities/FileResponseHandler;-><init>(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/amplitude/common/Logger;)V

    check-cast v0, Lcom/amplitude/core/utilities/ResponseHandler;

    return-object v0
.end method

.method public read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    invoke-virtual {p1}, Lcom/amplitude/core/Storage$Constants;->getRawVal()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amplitude/id/utilities/PropertiesFile;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 68
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/EventsFileManager;->read()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public releaseFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

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

    .line 55
    iget-object p2, p0, Lcom/amplitude/core/utilities/FileStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    invoke-virtual {p1}, Lcom/amplitude/core/Storage$Constants;->getRawVal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amplitude/id/utilities/PropertiesFile;->remove(Ljava/lang/String;)Z

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public removeEventCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "insertId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

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

    .line 59
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

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

    .line 112
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

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

    .line 51
    iget-object p3, p0, Lcom/amplitude/core/utilities/FileStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    invoke-virtual {p1}, Lcom/amplitude/core/Storage$Constants;->getRawVal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/amplitude/id/utilities/PropertiesFile;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
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

    instance-of v0, p2, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;

    iget v1, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;

    invoke-direct {v0, p0, p2}, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;-><init>(Lcom/amplitude/core/utilities/FileStorage;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    iget-object v0, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/core/utilities/FileStorage;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    iget-object p2, p0, Lcom/amplitude/core/utilities/FileStorage;->eventsFile:Lcom/amplitude/core/utilities/EventsFileManager;

    sget-object v2, Lcom/amplitude/core/utilities/JSONUtil;->INSTANCE:Lcom/amplitude/core/utilities/JSONUtil;

    invoke-virtual {v2, p1}, Lcom/amplitude/core/utilities/JSONUtil;->eventToString(Lcom/amplitude/core/events/BaseEvent;)Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/utilities/FileStorage$writeEvent$1;->label:I

    invoke-virtual {p2, v2, v0}, Lcom/amplitude/core/utilities/EventsFileManager;->storeEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 40
    :goto_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 41
    :cond_4
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getInsertId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 42
    :cond_5
    iget-object v0, v0, Lcom/amplitude/core/utilities/FileStorage;->eventCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function3;

    .line 45
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
