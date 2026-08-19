.class public final Lcom/amplitude/android/migration/ApiKeyStorageMigration;
.super Ljava/lang/Object;
.source "ApiKeyStorageMigration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/amplitude/android/migration/ApiKeyStorageMigration;",
        "",
        "amplitude",
        "Lcom/amplitude/android/Amplitude;",
        "(Lcom/amplitude/android/Amplitude;)V",
        "execute",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final amplitude:Lcom/amplitude/android/Amplitude;


# direct methods
.method public constructor <init>(Lcom/amplitude/android/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    return-void
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
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

    instance-of v0, p1, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;

    iget v1, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;-><init>(Lcom/amplitude/android/migration/ApiKeyStorageMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    iget-object v2, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/common/Logger;

    iget-object v4, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/Configuration;

    iget-object v6, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/migration/ApiKeyStorageMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {p1}, Lcom/amplitude/android/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object p1

    check-cast p1, Lcom/amplitude/android/Configuration;

    .line 12
    iget-object v2, p0, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v2}, Lcom/amplitude/android/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v2

    .line 14
    iget-object v6, p0, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v6}, Lcom/amplitude/android/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v6

    instance-of v7, v6, Lcom/amplitude/android/utilities/AndroidStorage;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/amplitude/android/utilities/AndroidStorage;

    move-object v12, v6

    goto :goto_1

    :cond_4
    move-object v12, v5

    :goto_1
    if-eqz v12, :cond_6

    .line 16
    new-instance v13, Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/amplitude/android/utilities/AndroidStorage;->getPrefix$android_release()Ljava/lang/String;

    move-result-object v10

    iget-object v6, p0, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v6}, Lcom/amplitude/android/Amplitude;->getDiagnostics()Lcom/amplitude/core/utilities/Diagnostics;

    move-result-object v11

    move-object v6, v13

    move-object v9, v2

    invoke-direct/range {v6 .. v11}, Lcom/amplitude/android/utilities/AndroidStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V

    .line 17
    new-instance v6, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-direct {v6, v13, v12, v2}, Lcom/amplitude/android/migration/StorageKeyMigration;-><init>(Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/common/Logger;)V

    iput-object p0, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->label:I

    invoke-virtual {v6, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p0

    move-object v4, p1

    :goto_2
    move-object p1, v4

    goto :goto_3

    :cond_6
    move-object v6, p0

    .line 20
    :goto_3
    iget-object v4, v6, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v4}, Lcom/amplitude/android/Amplitude;->getIdentifyInterceptStorage()Lcom/amplitude/core/Storage;

    move-result-object v4

    instance-of v7, v4, Lcom/amplitude/android/utilities/AndroidStorage;

    if-eqz v7, :cond_7

    check-cast v4, Lcom/amplitude/android/utilities/AndroidStorage;

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    if-eqz v4, :cond_9

    .line 23
    new-instance v12, Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/amplitude/android/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amplitude/android/utilities/AndroidStorage;->getPrefix$android_release()Ljava/lang/String;

    move-result-object v10

    iget-object p1, v6, Lcom/amplitude/android/migration/ApiKeyStorageMigration;->amplitude:Lcom/amplitude/android/Amplitude;

    invoke-virtual {p1}, Lcom/amplitude/android/Amplitude;->getDiagnostics()Lcom/amplitude/core/utilities/Diagnostics;

    move-result-object v11

    move-object v6, v12

    move-object v9, v2

    invoke-direct/range {v6 .. v11}, Lcom/amplitude/android/utilities/AndroidStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V

    .line 24
    new-instance p1, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-direct {p1, v12, v4, v2}, Lcom/amplitude/android/migration/StorageKeyMigration;-><init>(Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/common/Logger;)V

    iput-object v5, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/migration/ApiKeyStorageMigration$execute$1;->label:I

    invoke-virtual {p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 26
    :cond_8
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
