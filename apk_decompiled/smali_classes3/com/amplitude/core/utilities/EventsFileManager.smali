.class public final Lcom/amplitude/core/utilities/EventsFileManager;
.super Ljava/lang/Object;
.source "EventsFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/utilities/EventsFileManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventsFileManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventsFileManager.kt\ncom/amplitude/core/utilities/EventsFileManager\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 5 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,356:1\n78#2,2:357\n78#2,2:360\n1#3:359\n1#3:362\n108#4,10:363\n108#4,10:380\n108#4,8:390\n117#4:400\n108#4,8:403\n117#4:415\n25#5,2:373\n25#5,2:401\n25#5,2:411\n6435#6:375\n13536#6,2:413\n1547#7:376\n1618#7,3:377\n1849#7,2:398\n*S KotlinDebug\n*F\n+ 1 EventsFileManager.kt\ncom/amplitude/core/utilities/EventsFileManager\n*L\n41#1:357,2\n42#1:360,2\n41#1:359\n42#1:362\n57#1:363,10\n127#1:380,10\n156#1:390,8\n156#1:400\n316#1:403,8\n316#1:415\n106#1:373,2\n236#1:401,2\n323#1:411,2\n107#1:375\n324#1:413,2\n109#1:376\n109#1:377,3\n169#1:398,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0018\u0000 <2\u00020\u0001:\u0001<B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0003H\u0002J\u0019\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0003H\u0002J\u0008\u0010%\u001a\u00020&H\u0002J\u0011\u0010\'\u001a\u00020\u001fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020&H\u0002J\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00050+J\u000e\u0010,\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020&2\u0006\u0010\"\u001a\u00020\u0005J\u0010\u0010.\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0002J\u0008\u0010/\u001a\u00020\u001fH\u0002J\u0011\u00100\u001a\u00020\u001fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0016\u00101\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00052\u0006\u00102\u001a\u000203J\u0019\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J(\u00106\u001a\u00020\u001f2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002070+2\u0006\u0010 \u001a\u00020\u00032\u0008\u0008\u0002\u00108\u001a\u00020&H\u0002J\"\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020;2\u0006\u0010 \u001a\u00020\u00032\u0008\u0008\u0002\u00108\u001a\u00020&H\u0002R\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001a\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006="
    }
    d2 = {
        "Lcom/amplitude/core/utilities/EventsFileManager;",
        "",
        "directory",
        "Ljava/io/File;",
        "storageKey",
        "",
        "kvs",
        "Lcom/amplitude/id/utilities/KeyValueStore;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "diagnostics",
        "Lcom/amplitude/core/utilities/Diagnostics;",
        "(Ljava/io/File;Ljava/lang/String;Lcom/amplitude/id/utilities/KeyValueStore;Lcom/amplitude/common/Logger;Lcom/amplitude/core/utilities/Diagnostics;)V",
        "curFile",
        "",
        "getCurFile",
        "()Ljava/util/Map;",
        "fileIndexKey",
        "filePathSet",
        "",
        "getFilePathSet",
        "()Ljava/util/Set;",
        "readMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "kotlin.jvm.PlatformType",
        "storageVersionKey",
        "writeMutex",
        "getWriteMutex",
        "()Lkotlinx/coroutines/sync/Mutex;",
        "currentFile",
        "finish",
        "",
        "file",
        "getEventString",
        "filePath",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSortKeyForFile",
        "guardDirectory",
        "",
        "handleV1Files",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "incrementFileIndex",
        "read",
        "",
        "release",
        "remove",
        "rename",
        "reset",
        "rollover",
        "splitFile",
        "events",
        "Lorg/json/JSONArray;",
        "storeEvent",
        "event",
        "writeEventsToSplitFile",
        "Lorg/json/JSONObject;",
        "append",
        "writeToFile",
        "content",
        "",
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
.field public static final Companion:Lcom/amplitude/core/utilities/EventsFileManager$Companion;

.field public static final DELIMITER:Ljava/lang/String; = "\u0000"

.field public static final MAX_FILE_SIZE:I = 0xee098

.field private static final readMutexMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation
.end field

.field private static final writeMutexMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final curFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

.field private final directory:Ljava/io/File;

.field private final fileIndexKey:Ljava/lang/String;

.field private final filePathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final kvs:Lcom/amplitude/id/utilities/KeyValueStore;

.field private final logger:Lcom/amplitude/common/Logger;

.field private final readMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final storageKey:Ljava/lang/String;

.field private final storageVersionKey:Ljava/lang/String;

.field private final writeMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public static synthetic $r8$lambda$TH36nqWNulSYajg8LQOZIzcIxLg(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->read$lambda-3(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XkBYGrFO1gV93QEB0hyhHRjuW2M(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->currentFile$lambda-11$lambda-10(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xPyWQhXVhUwk682XLZHeccJilV4(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->handleV1Files$lambda-15$lambda-13(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/utilities/EventsFileManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/utilities/EventsFileManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/utilities/EventsFileManager;->Companion:Lcom/amplitude/core/utilities/EventsFileManager$Companion;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amplitude/core/utilities/EventsFileManager;->writeMutexMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amplitude/core/utilities/EventsFileManager;->readMutexMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/amplitude/id/utilities/KeyValueStore;Lcom/amplitude/common/Logger;Lcom/amplitude/core/utilities/Diagnostics;)V
    .locals 1

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storageKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kvs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnostics"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    .line 24
    iput-object p2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->kvs:Lcom/amplitude/id/utilities/KeyValueStore;

    .line 26
    iput-object p4, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    .line 27
    iput-object p5, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    .line 29
    const-string p1, "amplitude.events.file.index."

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->fileIndexKey:Ljava/lang/String;

    .line 30
    const-string p1, "amplitude.events.file.version."

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageVersionKey:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string p3, "newSetFromMap(Concurrent\u2026shMap<String, Boolean>())"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->filePathSet:Ljava/util/Set;

    .line 32
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->curFile:Ljava/util/Map;

    .line 41
    sget-object p1, Lcom/amplitude/core/utilities/EventsFileManager;->writeMutexMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    .line 357
    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p4, p5, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p3

    .line 358
    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p3, p1

    .line 357
    :cond_1
    :goto_0
    check-cast p3, Lkotlinx/coroutines/sync/Mutex;

    .line 41
    iput-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->writeMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 42
    sget-object p1, Lcom/amplitude/core/utilities/EventsFileManager;->readMutexMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    .line 360
    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {p4, p5, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p3

    .line 361
    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object p3, p1

    .line 360
    :cond_3
    :goto_1
    check-cast p3, Lkotlinx/coroutines/sync/Mutex;

    .line 42
    iput-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->readMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 45
    invoke-direct {p0}, Lcom/amplitude/core/utilities/EventsFileManager;->guardDirectory()Z

    .line 46
    new-instance p1, Lcom/amplitude/core/utilities/EventsFileManager$1;

    invoke-direct {p1, p0, v0}, Lcom/amplitude/core/utilities/EventsFileManager$1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p5, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getReadMutexMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 22
    sget-object v0, Lcom/amplitude/core/utilities/EventsFileManager;->readMutexMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getSortKeyForFile(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->getSortKeyForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWriteMutexMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 22
    sget-object v0, Lcom/amplitude/core/utilities/EventsFileManager;->writeMutexMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$handleV1Files(Lcom/amplitude/core/utilities/EventsFileManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->handleV1Files(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final currentFile()Ljava/io/File;
    .locals 8

    .line 231
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->curFile:Ljava/util/Map;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager;

    .line 234
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    new-instance v1, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    new-array v0, v1, [Ljava/io/File;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/io/File;

    .line 238
    :cond_0
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->kvs:Lcom/amplitude/id/utilities/KeyValueStore;

    iget-object v2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->fileIndexKey:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/amplitude/id/utilities/KeyValueStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 241
    iget-object v3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->curFile:Ljava/util/Map;

    iget-object v4, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->curFile:Ljava/util/Map;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private static final currentFile$lambda-11$lambda-10(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string p1, "$this_run"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".tmp"

    invoke-static {p2, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final finish(Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->rename(Ljava/io/File;)V

    .line 206
    invoke-direct {p0}, Lcom/amplitude/core/utilities/EventsFileManager;->incrementFileIndex()Z

    .line 207
    invoke-direct {p0}, Lcom/amplitude/core/utilities/EventsFileManager;->reset()V

    return-void
.end method

.method private final getSortKeyForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 246
    invoke-static {p1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 247
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 249
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    const/16 v4, 0x30

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p1
.end method

.method private final guardDirectory()Z
    .locals 3

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/amplitude/id/utilities/FileUtilsKt;->createDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    const-string v2, "Failed to create directory: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to create directory for events storage: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private final handleV1Files(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;

    iget v1, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 315
    iget v2, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/EventsFileManager;->getWriteMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    const-string/jumbo v2, "writeMutex"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iput-object p0, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/utilities/EventsFileManager$handleV1Files$1;->label:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 317
    :goto_1
    :try_start_0
    iget-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager;->kvs:Lcom/amplitude/id/utilities/KeyValueStore;

    iget-object v2, v0, Lcom/amplitude/core/utilities/EventsFileManager;->storageVersionKey:Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-interface {p1, v2, v5, v6}, Lcom/amplitude/id/utilities/KeyValueStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-lez p1, :cond_4

    goto/16 :goto_4

    .line 321
    :cond_4
    iget-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    new-instance v2, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda2;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 412
    new-array p1, v2, [Ljava/io/File;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/io/File;

    .line 413
    :cond_5
    array-length v5, p1

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, p1, v6

    .line 325
    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4, v3, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 326
    const-string v9, "\u0000"

    const/4 v10, 0x2

    invoke-static {v8, v9, v2, v10, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x5b

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v11, v10, [C

    fill-array-data v11, :array_0

    invoke-static {v8, v11}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v8

    new-array v10, v10, [C

    fill-array-data v10, :array_1

    invoke-static {v8, v10}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {v9}, Lcom/amplitude/core/utilities/JSONUtilKt;->toJSONObjectList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v9

    .line 332
    invoke-direct {v0, v9, v7, v2}, Lcom/amplitude/core/utilities/EventsFileManager;->writeEventsToSplitFile(Ljava/util/List;Ljava/io/File;Z)V

    .line 333
    invoke-static {v7}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "tmp"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 334
    invoke-direct {v0, v7}, Lcom/amplitude/core/utilities/EventsFileManager;->finish(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 337
    :catch_0
    :try_start_2
    iget-object v9, v0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse events: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", dropping file: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.path"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/amplitude/core/utilities/EventsFileManager;->remove(Ljava/lang/String;)Z

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 342
    :cond_7
    iget-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager;->kvs:Lcom/amplitude/id/utilities/KeyValueStore;

    iget-object v0, v0, Lcom/amplitude/core/utilities/EventsFileManager;->storageVersionKey:Ljava/lang/String;

    const-wide/16 v2, 0x2

    invoke-interface {p1, v0, v2, v3}, Lcom/amplitude/id/utilities/KeyValueStore;->putLong(Ljava/lang/String;J)Z

    .line 343
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    nop

    :array_0
    .array-data 2
        0x5bs
        0x2cs
    .end array-data

    :array_1
    .array-data 2
        0x5ds
        0x2cs
    .end array-data
.end method

.method private static final handleV1Files$lambda-15$lambda-13(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".properties"

    invoke-static {p2, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final incrementFileIndex()Z
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->kvs:Lcom/amplitude/id/utilities/KeyValueStore;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->fileIndexKey:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/amplitude/id/utilities/KeyValueStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->kvs:Lcom/amplitude/id/utilities/KeyValueStore;

    iget-object v3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->fileIndexKey:Ljava/lang/String;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-interface {v2, v3, v0, v1}, Lcom/amplitude/id/utilities/KeyValueStore;->putLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private static final read$lambda-3(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".tmp"

    invoke-static {p2, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ".properties"

    invoke-static {p2, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final rename(Ljava/io/File;)V
    .locals 5

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {p1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File already exists: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", handle gracefully."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    invoke-static {p1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final reset()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->curFile:Ljava/util/Map;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->storageKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final writeEventsToSplitFile(Ljava/util/List;Ljava/io/File;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .line 285
    const-string v0, "\u0000"

    .line 287
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    sget-object p1, Lcom/amplitude/core/utilities/EventsFileManager$writeEventsToSplitFile$contents$1;->INSTANCE:Lcom/amplitude/core/utilities/EventsFileManager$writeEventsToSplitFile$contents$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 294
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/EventsFileManager;->writeToFile([BLjava/io/File;Z)V

    .line 295
    invoke-direct {p0, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->rename(Ljava/io/File;)V

    goto :goto_0

    .line 294
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 303
    iget-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to write to split file: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 304
    iget-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 300
    iget-object p2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Failed to encode event: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 301
    iget-object p2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 297
    iget-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to create or write to split file: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic writeEventsToSplitFile$default(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/util/List;Ljava/io/File;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 280
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/EventsFileManager;->writeEventsToSplitFile(Ljava/util/List;Ljava/io/File;Z)V

    return-void
.end method

.method private final writeToFile([BLjava/io/File;Z)V
    .locals 4

    .line 260
    const-string v0, "Failed to write to file: "

    const-string v1, "Error writing to file: "

    .line 261
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v2, Ljava/io/Closeable;

    const/4 p3, 0x0

    move-object v3, p3

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/FileOutputStream;

    .line 262
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 263
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 264
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    invoke-static {v2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 275
    iget-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 272
    iget-object p2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    const-string p3, "Security exception when saving event: "

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 269
    iget-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 266
    iget-object p3, p0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    const-string p3, "File not found: "

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic writeToFile$default(Lcom/amplitude/core/utilities/EventsFileManager;[BLjava/io/File;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 255
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/EventsFileManager;->writeToFile([BLjava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public final getCurFile()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->curFile:Ljava/util/Map;

    return-object v0
.end method

.method public final getEventString(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "\u0000"

    const-string v3, "Failed to parse events: "

    const-string v4, "["

    instance-of v5, v0, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;

    iget v6, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v0, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->label:I

    sub-int/2addr v0, v7

    iput v0, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;

    invoke-direct {v5, v1, v0}, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 155
    iget v7, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->label:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    iget-object v6, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v5, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    iget-object v0, v1, Lcom/amplitude/core/utilities/EventsFileManager;->readMutex:Lkotlinx/coroutines/sync/Mutex;

    const-string v7, "readMutex"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iput-object v1, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->L$1:Ljava/lang/Object;

    iput-object v0, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->L$2:Ljava/lang/Object;

    iput v8, v5, Lcom/amplitude/core/utilities/EventsFileManager$getEventString$1;->label:I

    invoke-interface {v0, v9, v5}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_3

    return-object v6

    :cond_3
    move-object v6, v0

    move-object v5, v1

    .line 158
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Lcom/amplitude/core/utilities/EventsFileManager;->getFilePathSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v10, ""

    if-eqz v0, :cond_4

    .line 159
    :try_start_1
    invoke-virtual {v5}, Lcom/amplitude/core/utilities/EventsFileManager;->getFilePathSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 162
    :cond_4
    invoke-virtual {v5}, Lcom/amplitude/core/utilities/EventsFileManager;->getFilePathSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v12, Ljava/io/InputStream;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v12, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    instance-of v11, v0, Ljava/io/BufferedReader;

    if-eqz v11, :cond_5

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_2

    :cond_5
    new-instance v11, Ljava/io/BufferedReader;

    const/16 v12, 0x2000

    invoke-direct {v11, v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v11

    :goto_2
    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;

    move-object v0, v9

    check-cast v0, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v0, v11

    check-cast v0, Ljava/io/BufferedReader;

    .line 164
    check-cast v0, Ljava/io/Reader;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x2

    .line 165
    invoke-static {v0, v2, v12, v13, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 168
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 169
    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    new-array v14, v8, [Ljava/lang/String;

    aput-object v2, v14, v12

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 398
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v4, :cond_6

    .line 172
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 174
    :catch_0
    :try_start_4
    iget-object v4, v5, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {v4, v2}, Lcom/amplitude/core/utilities/Diagnostics;->addMalformedEvent(Ljava/lang/String;)V

    .line 175
    iget-object v4, v5, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    const-string v7, "Failed to parse event: "

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 179
    :cond_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 180
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    .line 179
    :cond_8
    const-string v0, "if (events.length() > 0)\u2026 \"\"\n                    }"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 186
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v13, [C

    fill-array-data v4, :array_0

    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    new-array v4, v13, [C

    fill-array-data v4, :array_1

    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "jsonArray.toString()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v10, v2

    goto :goto_4

    .line 191
    :catch_1
    :try_start_6
    iget-object v2, v5, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {v2, v0}, Lcom/amplitude/core/utilities/Diagnostics;->addMalformedEvent(Ljava/lang/String;)V

    .line 192
    iget-object v2, v5, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dropping file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5, v7}, Lcom/amplitude/core/utilities/EventsFileManager;->remove(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v10, v0

    .line 163
    :goto_4
    :try_start_7
    invoke-static {v11, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 400
    :goto_5
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v10

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 163
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 400
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :array_0
    .array-data 2
        0x5bs
        0x2cs
    .end array-data

    :array_1
    .array-data 2
        0x5ds
        0x2cs
    .end array-data
.end method

.method public final getFilePathSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->filePathSet:Ljava/util/Set;

    return-object v0
.end method

.method public final getWriteMutex()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->writeMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public final read()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    new-instance v1, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/amplitude/core/utilities/EventsFileManager$$ExternalSyntheticLambda0;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 374
    new-array v0, v0, [Ljava/io/File;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/io/File;

    .line 375
    :cond_0
    new-instance v1, Lcom/amplitude/core/utilities/EventsFileManager$read$$inlined$sortedBy$1;

    invoke-direct {v1, p0}, Lcom/amplitude/core/utilities/EventsFileManager$read$$inlined$sortedBy$1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 377
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 378
    check-cast v2, Ljava/io/File;

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->filePathSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/amplitude/core/utilities/EventsFileManager;->filePathSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public final rollover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p1, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;

    iget v1, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 126
    iget v2, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/EventsFileManager;->getWriteMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    const-string/jumbo v2, "writeMutex"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iput-object p0, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/core/utilities/EventsFileManager$rollover$1;->label:I

    invoke-interface {p1, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 128
    :goto_1
    :try_start_0
    invoke-direct {v0}, Lcom/amplitude/core/utilities/EventsFileManager;->currentFile()Ljava/io/File;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 130
    invoke-direct {v0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->finish(Ljava/io/File;)V

    .line 132
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final splitFile(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 10

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    const-string v2, "-1.tmp"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/amplitude/core/utilities/EventsFileManager;->directory:Ljava/io/File;

    const-string v2, "-2.tmp"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcom/amplitude/core/utilities/JSONUtilKt;->split(Lorg/json/JSONArray;)Lkotlin/Pair;

    move-result-object p2

    .line 150
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/amplitude/core/utilities/EventsFileManager;->writeEventsToSplitFile$default(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/util/List;Ljava/io/File;ZILjava/lang/Object;)V

    .line 151
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/util/List;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 p2, 0x0

    move-object v4, p0

    move-object v6, v7

    move v7, p2

    invoke-static/range {v4 .. v9}, Lcom/amplitude/core/utilities/EventsFileManager;->writeEventsToSplitFile$default(Lcom/amplitude/core/utilities/EventsFileManager;Ljava/util/List;Ljava/io/File;ZILjava/lang/Object;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/amplitude/core/utilities/EventsFileManager;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public final storeEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;

    iget v1, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;

    invoke-direct {v0, p0, p2}, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;-><init>(Lcom/amplitude/core/utilities/EventsFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/core/utilities/EventsFileManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/EventsFileManager;->getWriteMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p2

    const-string/jumbo v2, "writeMutex"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iput-object p0, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/core/utilities/EventsFileManager$storeEvent$1;->label:I

    invoke-interface {p2, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v5, p1

    move-object p1, p2

    .line 58
    :goto_1
    :try_start_0
    invoke-direct {v0}, Lcom/amplitude/core/utilities/EventsFileManager;->guardDirectory()Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_3

    .line 61
    :cond_4
    invoke-direct {v0}, Lcom/amplitude/core/utilities/EventsFileManager;->currentFile()Ljava/io/File;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Failed to create new storage file: "

    if-nez v1, :cond_5

    .line 65
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 67
    :try_start_2
    iget-object v4, v0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 68
    iget-object v0, v0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0xee098

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    .line 75
    invoke-direct {v0, p2}, Lcom/amplitude/core/utilities/EventsFileManager;->finish(Ljava/io/File;)V

    .line 77
    invoke-direct {v0}, Lcom/amplitude/core/utilities/EventsFileManager;->currentFile()Ljava/io/File;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    .line 81
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 83
    :try_start_4
    iget-object v4, v0, Lcom/amplitude/core/utilities/EventsFileManager;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amplitude/core/utilities/Diagnostics;->addErrorLog(Ljava/lang/String;)V

    .line 84
    iget-object v0, v0, Lcom/amplitude/core/utilities/EventsFileManager;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 89
    :cond_6
    const-string v6, "\u0000"

    const-string v7, ""

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, v4}, Lcom/amplitude/core/utilities/EventsFileManager;->writeToFile([BLjava/io/File;Z)V

    .line 91
    :goto_3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    invoke-interface {p1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 90
    :cond_7
    :try_start_5
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p2

    .line 372
    invoke-interface {p1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method
