.class public final Lcom/amplitude/id/IdentityConfiguration;
.super Ljava/lang/Object;
.source "IdentityConfiguration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JM\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/amplitude/id/IdentityConfiguration;",
        "",
        "instanceName",
        "",
        "apiKey",
        "experimentApiKey",
        "identityStorageProvider",
        "Lcom/amplitude/id/IdentityStorageProvider;",
        "storageDirectory",
        "Ljava/io/File;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)V",
        "getApiKey",
        "()Ljava/lang/String;",
        "getExperimentApiKey",
        "getIdentityStorageProvider",
        "()Lcom/amplitude/id/IdentityStorageProvider;",
        "getInstanceName",
        "getLogger",
        "()Lcom/amplitude/common/Logger;",
        "getStorageDirectory",
        "()Ljava/io/File;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final experimentApiKey:Ljava/lang/String;

.field private final identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

.field private final instanceName:Ljava/lang/String;

.field private final logger:Lcom/amplitude/common/Logger;

.field private final storageDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)V
    .locals 1

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityStorageProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    .line 14
    iput-object p5, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    .line 15
    iput-object p6, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/amplitude/id/IdentityConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amplitude/id/IdentityConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;ILjava/lang/Object;)Lcom/amplitude/id/IdentityConfiguration;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/amplitude/id/IdentityConfiguration;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)Lcom/amplitude/id/IdentityConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/amplitude/id/IdentityStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    return-object v0
.end method

.method public final component5()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    return-object v0
.end method

.method public final component6()Lcom/amplitude/common/Logger;
    .locals 1

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)Lcom/amplitude/id/IdentityConfiguration;
    .locals 8

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityStorageProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amplitude/id/IdentityConfiguration;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amplitude/id/IdentityConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amplitude/id/IdentityConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amplitude/id/IdentityConfiguration;

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    iget-object v3, p1, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    iget-object v3, p1, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    iget-object p1, p1, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getExperimentApiKey()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentityStorageProvider()Lcom/amplitude/id/IdentityStorageProvider;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    return-object v0
.end method

.method public final getInstanceName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogger()Lcom/amplitude/common/Logger;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    return-object v0
.end method

.method public final getStorageDirectory()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdentityConfiguration(instanceName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->instanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experimentApiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->experimentApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identityStorageProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->identityStorageProvider:Lcom/amplitude/id/IdentityStorageProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storageDirectory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->storageDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/id/IdentityConfiguration;->logger:Lcom/amplitude/common/Logger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
