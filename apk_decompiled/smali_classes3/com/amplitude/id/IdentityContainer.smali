.class public final Lcom/amplitude/id/IdentityContainer;
.super Ljava/lang/Object;
.source "IdentityContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/id/IdentityContainer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/amplitude/id/IdentityContainer;",
        "",
        "configuration",
        "Lcom/amplitude/id/IdentityConfiguration;",
        "(Lcom/amplitude/id/IdentityConfiguration;)V",
        "getConfiguration",
        "()Lcom/amplitude/id/IdentityConfiguration;",
        "identityManager",
        "Lcom/amplitude/id/IdentityManager;",
        "getIdentityManager",
        "()Lcom/amplitude/id/IdentityManager;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/amplitude/id/IdentityContainer$Companion;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amplitude/id/IdentityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static final instancesLock:Ljava/lang/Object;


# instance fields
.field private final configuration:Lcom/amplitude/id/IdentityConfiguration;

.field private final identityManager:Lcom/amplitude/id/IdentityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/id/IdentityContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/id/IdentityContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/id/IdentityContainer;->Companion:Lcom/amplitude/id/IdentityContainer$Companion;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amplitude/id/IdentityContainer;->instancesLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/amplitude/id/IdentityContainer;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/amplitude/id/IdentityConfiguration;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/id/IdentityContainer;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    .line 28
    invoke-virtual {p1}, Lcom/amplitude/id/IdentityConfiguration;->getIdentityStorageProvider()Lcom/amplitude/id/IdentityStorageProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amplitude/id/IdentityStorageProvider;->getIdentityStorage(Lcom/amplitude/id/IdentityConfiguration;)Lcom/amplitude/id/IdentityStorage;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/amplitude/id/IdentityManagerImpl;

    invoke-direct {v0, p1}, Lcom/amplitude/id/IdentityManagerImpl;-><init>(Lcom/amplitude/id/IdentityStorage;)V

    check-cast v0, Lcom/amplitude/id/IdentityManager;

    iput-object v0, p0, Lcom/amplitude/id/IdentityContainer;->identityManager:Lcom/amplitude/id/IdentityManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amplitude/id/IdentityConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amplitude/id/IdentityContainer;-><init>(Lcom/amplitude/id/IdentityConfiguration;)V

    return-void
.end method

.method public static final synthetic access$getInstances$cp()Ljava/util/Map;
    .locals 1

    .line 9
    sget-object v0, Lcom/amplitude/id/IdentityContainer;->instances:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getInstancesLock$cp()Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object v0, Lcom/amplitude/id/IdentityContainer;->instancesLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getInstance(Lcom/amplitude/id/IdentityConfiguration;)Lcom/amplitude/id/IdentityContainer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/amplitude/id/IdentityContainer;->Companion:Lcom/amplitude/id/IdentityContainer$Companion;

    invoke-virtual {v0, p0}, Lcom/amplitude/id/IdentityContainer$Companion;->getInstance(Lcom/amplitude/id/IdentityConfiguration;)Lcom/amplitude/id/IdentityContainer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getConfiguration()Lcom/amplitude/id/IdentityConfiguration;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/id/IdentityContainer;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    return-object v0
.end method

.method public final getIdentityManager()Lcom/amplitude/id/IdentityManager;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/id/IdentityContainer;->identityManager:Lcom/amplitude/id/IdentityManager;

    return-object v0
.end method
