.class public final Lcom/amplitude/id/IdentityContainer$Companion;
.super Ljava/lang/Object;
.source "IdentityContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/id/IdentityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityContainer.kt\ncom/amplitude/id/IdentityContainer$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,32:1\n355#2,7:33\n*S KotlinDebug\n*F\n+ 1 IdentityContainer.kt\ncom/amplitude/id/IdentityContainer$Companion\n*L\n20#1:33,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/amplitude/id/IdentityContainer$Companion;",
        "",
        "()V",
        "instances",
        "",
        "",
        "Lcom/amplitude/id/IdentityContainer;",
        "instancesLock",
        "getInstance",
        "configuration",
        "Lcom/amplitude/id/IdentityConfiguration;",
        "id"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/amplitude/id/IdentityContainer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Lcom/amplitude/id/IdentityConfiguration;)Lcom/amplitude/id/IdentityContainer;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/amplitude/id/IdentityContainer;->access$getInstancesLock$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 20
    :try_start_0
    invoke-static {}, Lcom/amplitude/id/IdentityContainer;->access$getInstances$cp()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amplitude/id/IdentityConfiguration;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 21
    new-instance v3, Lcom/amplitude/id/IdentityContainer;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/amplitude/id/IdentityContainer;-><init>(Lcom/amplitude/id/IdentityConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    check-cast v3, Lcom/amplitude/id/IdentityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
