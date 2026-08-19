.class public final Lcom/amplitude/android/migration/StorageKeyMigration;
.super Ljava/lang/Object;
.source "StorageKeyMigration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u0008\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\tH\u0002J\u0019\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0011\u0010\u0010\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u0011\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/amplitude/android/migration/StorageKeyMigration;",
        "",
        "source",
        "Lcom/amplitude/android/utilities/AndroidStorage;",
        "destination",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "(Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/common/Logger;)V",
        "execute",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "moveFileIndex",
        "moveSimpleValue",
        "key",
        "Lcom/amplitude/core/Storage$Constants;",
        "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "moveSimpleValues",
        "moveSourceEventFilesToDestination",
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
.field private final destination:Lcom/amplitude/android/utilities/AndroidStorage;

.field private final logger:Lcom/amplitude/common/Logger;

.field private final source:Lcom/amplitude/android/utilities/AndroidStorage;


# direct methods
.method public constructor <init>(Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/common/Logger;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    .line 11
    iput-object p2, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    .line 12
    iput-object p3, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    return-void
.end method

.method public static final synthetic access$moveSimpleValue(Lcom/amplitude/android/migration/StorageKeyMigration;Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveSimpleValues(Lcom/amplitude/android/migration/StorageKeyMigration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValues(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveSourceEventFilesToDestination(Lcom/amplitude/android/migration/StorageKeyMigration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSourceEventFilesToDestination(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final moveFileIndex()V
    .locals 5

    .line 89
    const-string v0, "amplitude.events.file.index."

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v1}, Lcom/amplitude/android/utilities/AndroidStorage;->getStorageKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v2}, Lcom/amplitude/android/utilities/AndroidStorage;->getStorageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v2}, Lcom/amplitude/android/utilities/AndroidStorage;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v2}, Lcom/amplitude/android/utilities/AndroidStorage;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :try_start_1
    iget-object v4, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v4}, Lcom/amplitude/android/utilities/AndroidStorage;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :try_start_2
    iget-object v0, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v0}, Lcom/amplitude/android/utilities/AndroidStorage;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    const-string v2, "can\'t write file index: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    const-string v2, "can\'t move file index: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    const-string v0, "can\'t write destination "

    instance-of v1, p2, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;

    iget v2, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget p2, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->label:I

    sub-int/2addr p2, v3

    iput p2, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;

    invoke-direct {v1, p0, p2}, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;-><init>(Lcom/amplitude/android/migration/StorageKeyMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 68
    iget v3, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->label:I

    const-string v4, ": "

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p1, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/Storage$Constants;

    iget-object v0, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/android/migration/StorageKeyMigration;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p2

    goto/16 :goto_4

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    iget-object p1, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/Storage$Constants;

    iget-object v3, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/amplitude/android/migration/StorageKeyMigration;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    :try_start_2
    iget-object p2, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {p2, p1}, Lcom/amplitude/android/utilities/AndroidStorage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v3, p1}, Lcom/amplitude/android/utilities/AndroidStorage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v3, :cond_6

    .line 75
    :try_start_3
    iget-object v3, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    iput-object p0, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$0:Ljava/lang/Object;

    iput-object p1, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$1:Ljava/lang/Object;

    iput v6, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->label:I

    invoke-virtual {v3, p1, p2, v1}, Lcom/amplitude/android/utilities/AndroidStorage;->write(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p2, v2, :cond_5

    return-object v2

    :cond_5
    move-object v3, p0

    :goto_1
    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v3, p0

    .line 77
    :goto_2
    :try_start_4
    iget-object v1, v3, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    .line 78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    :catch_3
    move-exception p2

    move-object v0, v3

    goto :goto_4

    :cond_6
    move-object v0, p0

    .line 82
    :goto_3
    :try_start_5
    iget-object p2, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    iput-object v0, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$0:Ljava/lang/Object;

    iput-object p1, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValue$1;->label:I

    invoke-virtual {p2, p1, v1}, Lcom/amplitude/android/utilities/AndroidStorage;->remove(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-ne p1, v2, :cond_7

    return-object v2

    :catch_4
    move-exception p2

    move-object v0, p0

    .line 84
    :goto_4
    iget-object v0, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t move "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    .line 86
    :cond_7
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final moveSimpleValues(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;

    iget v1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;-><init>(Lcom/amplitude/android/migration/StorageKeyMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :pswitch_0
    iget-object v0, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_3
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_4
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;

    iput-object p0, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    .line 57
    :goto_1
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    iput-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 58
    :cond_2
    :goto_2
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

    iput-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 60
    :cond_3
    :goto_3
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->OPT_OUT:Lcom/amplitude/core/Storage$Constants;

    iput-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 61
    :cond_4
    :goto_4
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->Events:Lcom/amplitude/core/Storage$Constants;

    iput-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 62
    :cond_5
    :goto_5
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->APP_VERSION:Lcom/amplitude/core/Storage$Constants;

    iput-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 63
    :cond_6
    :goto_6
    sget-object p1, Lcom/amplitude/core/Storage$Constants;->APP_BUILD:Lcom/amplitude/core/Storage$Constants;

    iput-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSimpleValues$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValue(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    .line 65
    :goto_7
    invoke-direct {v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveFileIndex()V

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final moveSourceEventFilesToDestination(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;

    iget v1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;-><init>(Lcom/amplitude/android/migration/StorageKeyMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/android/migration/StorageKeyMigration;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    :try_start_1
    iget-object p1, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    iput-object p0, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$moveSourceEventFilesToDestination$1;->label:I

    invoke-virtual {p1, v0}, Lcom/amplitude/android/utilities/AndroidStorage;->rollover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 25
    :goto_1
    :try_start_2
    iget-object p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {p1}, Lcom/amplitude/android/utilities/AndroidStorage;->readEventsContent()Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 30
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v8, Ljava/io/File;

    iget-object v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v3}, Lcom/amplitude/android/utilities/AndroidStorage;->getStorageKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v4}, Lcom/amplitude/android/utilities/AndroidStorage;->getStorageKey()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    invoke-static {v8}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 37
    const-string v3, "."

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_5
    new-instance v3, Ljava/io/File;

    .line 40
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v3

    .line 45
    :cond_6
    :try_start_3
    invoke-virtual {v1, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 47
    :try_start_4
    iget-object v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception p1

    move-object v0, p0

    .line 51
    :goto_3
    iget-object v0, v0, Lcom/amplitude/android/migration/StorageKeyMigration;->logger:Lcom/amplitude/common/Logger;

    const-string v1, "can\'t move event files: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    .line 53
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;

    iget v1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;-><init>(Lcom/amplitude/android/migration/StorageKeyMigration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v2, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/migration/StorageKeyMigration;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->source:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {p1}, Lcom/amplitude/android/utilities/AndroidStorage;->getStorageKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/amplitude/android/migration/StorageKeyMigration;->destination:Lcom/amplitude/android/utilities/AndroidStorage;

    invoke-virtual {v2}, Lcom/amplitude/android/utilities/AndroidStorage;->getStorageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 18
    :cond_4
    iput-object p0, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSourceEventFilesToDestination(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    const/4 p1, 0x0

    .line 19
    iput-object p1, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/android/migration/StorageKeyMigration$execute$1;->label:I

    invoke-direct {v2, v0}, Lcom/amplitude/android/migration/StorageKeyMigration;->moveSimpleValues(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 20
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
