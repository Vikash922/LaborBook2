.class public final Lcom/amplitude/id/FileIdentityStorage;
.super Ljava/lang/Object;
.source "FileIdentityStorage.kt"

# interfaces
.implements Lcom/amplitude/id/IdentityStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/id/FileIdentityStorage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/amplitude/id/FileIdentityStorage;",
        "Lcom/amplitude/id/IdentityStorage;",
        "configuration",
        "Lcom/amplitude/id/IdentityConfiguration;",
        "(Lcom/amplitude/id/IdentityConfiguration;)V",
        "getConfiguration",
        "()Lcom/amplitude/id/IdentityConfiguration;",
        "propertiesFile",
        "Lcom/amplitude/id/utilities/PropertiesFile;",
        "load",
        "Lcom/amplitude/id/Identity;",
        "safeForKey",
        "",
        "apiKey",
        "",
        "configValue",
        "safetyCheck",
        "",
        "saveDeviceId",
        "deviceId",
        "saveUserId",
        "userId",
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
.field public static final API_KEY:Ljava/lang/String; = "api_key"

.field public static final Companion:Lcom/amplitude/id/FileIdentityStorage$Companion;

.field public static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field public static final EXPERIMENT_API_KEY:Ljava/lang/String; = "experiment_api_key"

.field public static final STORAGE_PREFIX:Ljava/lang/String; = "amplitude-identity"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# instance fields
.field private final configuration:Lcom/amplitude/id/IdentityConfiguration;

.field private final propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/id/FileIdentityStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/id/FileIdentityStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/id/FileIdentityStorage;->Companion:Lcom/amplitude/id/FileIdentityStorage$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amplitude/id/IdentityConfiguration;)V
    .locals 4

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/id/FileIdentityStorage;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    .line 19
    invoke-virtual {p1}, Lcom/amplitude/id/IdentityConfiguration;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/amplitude/id/IdentityConfiguration;->getStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/amplitude-identity/"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-static {v1}, Lcom/amplitude/id/utilities/FileUtilsKt;->createDirectory(Ljava/io/File;)V

    .line 22
    new-instance v2, Lcom/amplitude/id/utilities/PropertiesFile;

    const-string v3, "amplitude-identity"

    invoke-virtual {p1}, Lcom/amplitude/id/IdentityConfiguration;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object p1

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/amplitude/id/utilities/PropertiesFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/common/Logger;)V

    iput-object v2, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    .line 23
    invoke-virtual {v2}, Lcom/amplitude/id/utilities/PropertiesFile;->load()V

    .line 24
    invoke-direct {p0}, Lcom/amplitude/id/FileIdentityStorage;->safetyCheck()V

    return-void
.end method

.method private final safeForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/amplitude/id/utilities/PropertiesFile;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 65
    :cond_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final safetyCheck()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    invoke-virtual {v0}, Lcom/amplitude/id/IdentityConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api_key"

    invoke-direct {p0, v1, v0}, Lcom/amplitude/id/FileIdentityStorage;->safeForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "experiment_api_key"

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    invoke-virtual {v0}, Lcom/amplitude/id/IdentityConfiguration;->getExperimentApiKey()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {p0, v2, v0}, Lcom/amplitude/id/FileIdentityStorage;->safeForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "user_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "device_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amplitude/id/utilities/PropertiesFile;->remove(Ljava/util/List;)Z

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    invoke-virtual {v0}, Lcom/amplitude/id/IdentityConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    invoke-virtual {v3, v1, v0}, Lcom/amplitude/id/utilities/PropertiesFile;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    invoke-virtual {v0}, Lcom/amplitude/id/IdentityConfiguration;->getExperimentApiKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    invoke-virtual {v1, v2, v0}, Lcom/amplitude/id/utilities/PropertiesFile;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public final getConfiguration()Lcom/amplitude/id/IdentityConfiguration;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->configuration:Lcom/amplitude/id/IdentityConfiguration;

    return-object v0
.end method

.method public load()Lcom/amplitude/id/Identity;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    const-string/jumbo v1, "user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amplitude/id/utilities/PropertiesFile;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    const-string v3, "device_id"

    invoke-virtual {v1, v3, v2}, Lcom/amplitude/id/utilities/PropertiesFile;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Lcom/amplitude/id/Identity;

    invoke-direct {v2, v0, v1}, Lcom/amplitude/id/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Lcom/amplitude/id/utilities/PropertiesFile;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public saveUserId(Ljava/lang/String;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amplitude/id/FileIdentityStorage;->propertiesFile:Lcom/amplitude/id/utilities/PropertiesFile;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/amplitude/id/utilities/PropertiesFile;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
