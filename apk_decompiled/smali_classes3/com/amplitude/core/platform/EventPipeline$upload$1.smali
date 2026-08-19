.class final Lcom/amplitude/core/platform/EventPipeline$upload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventPipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/core/platform/EventPipeline;->upload()Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventPipeline.kt\ncom/amplitude/core/platform/EventPipeline$upload$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,197:1\n103#2:198\n80#2,6:199\n104#2,2:205\n90#2:207\n86#2,3:208\n*S KotlinDebug\n*F\n+ 1 EventPipeline.kt\ncom/amplitude/core/platform/EventPipeline$upload$1\n*L\n121#1:198\n121#1:199,6\n121#1:205,2\n121#1:207\n121#1:208,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.amplitude.core.platform.EventPipeline$upload$1"
    f = "EventPipeline.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2
    }
    l = {
        0xcd,
        0x7a,
        0x87
    }
    m = "invokeSuspend"
    n = {
        "$this$consume$iv$iv",
        "$this$consume$iv$iv",
        "$this$consume$iv$iv",
        "events"
    }
    s = {
        "L$1",
        "L$1",
        "L$1",
        "L$4"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/amplitude/core/platform/EventPipeline;


# direct methods
.method constructor <init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/platform/EventPipeline;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/platform/EventPipeline$upload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/amplitude/core/platform/EventPipeline$upload$1;

    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-direct {p1, v0, p2}, Lcom/amplitude/core/platform/EventPipeline$upload$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/core/platform/EventPipeline$upload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/core/platform/EventPipeline$upload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/platform/EventPipeline$upload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/amplitude/core/platform/EventPipeline$upload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$4:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/amplitude/core/platform/EventPipeline;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v8

    move-object v8, v5

    move-object v13, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, v13

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v1, v7

    move-object v7, v5

    goto/16 :goto_7

    :catch_1
    move-exception p1

    move-object v1, v7

    move-object v7, v5

    goto/16 :goto_8

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$1:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/core/platform/EventPipeline;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v5

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$1:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/core/platform/EventPipeline;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v6

    move-object v6, v5

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {p1}, Lcom/amplitude/core/platform/EventPipeline;->access$getUploadChannel$p(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    .line 205
    :try_start_3
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1

    move-object v6, v5

    :goto_0
    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$3:Ljava/lang/Object;

    iput-object v5, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$4:Ljava/lang/Object;

    iput v4, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->label:I

    invoke-interface {v1, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object v13, v7

    move-object v7, p1

    move-object p1, v13

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 122
    invoke-static {v7}, Lcom/amplitude/core/platform/EventPipeline;->access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/amplitude/core/platform/EventPipeline$upload$1$1$1;

    invoke-direct {v9, v7, v5}, Lcom/amplitude/core/platform/EventPipeline$upload$1$1$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v7, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->label:I

    invoke-static {p1, v9, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object p1, v6

    move-object v6, v7

    .line 132
    :goto_2
    invoke-static {v6}, Lcom/amplitude/core/platform/EventPipeline;->access$getStorage(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Storage;

    move-result-object v7

    invoke-interface {v7}, Lcom/amplitude/core/Storage;->readEventsContent()Ljava/util/List;

    move-result-object v7

    .line 133
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v13, v7

    move-object v7, p1

    move-object p1, v6

    move-object v6, v13

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :try_start_4
    invoke-static {p1}, Lcom/amplitude/core/platform/EventPipeline;->access$getStorage(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Storage;

    move-result-object v10

    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$3:Ljava/lang/Object;

    iput-object v9, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->L$4:Ljava/lang/Object;

    iput v2, p0, Lcom/amplitude/core/platform/EventPipeline$upload$1;->label:I

    invoke-interface {v10, v9, p0}, Lcom/amplitude/core/Storage;->getEventsString(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v10, v0, :cond_6

    return-object v0

    :cond_6
    move-object v13, v9

    move-object v9, p1

    move-object p1, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v13

    .line 120
    :goto_4
    :try_start_5
    check-cast p1, Ljava/lang/String;

    .line 136
    move-object v11, p1

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_6

    .line 137
    :cond_7
    invoke-static {v9}, Lcom/amplitude/core/platform/EventPipeline;->access$getHttpClient$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/utilities/HttpClient;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amplitude/core/utilities/HttpClient;->upload()Lcom/amplitude/core/utilities/Connection;

    move-result-object v11

    .line 138
    invoke-virtual {v11}, Lcom/amplitude/core/utilities/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    if-nez v12, :cond_8

    goto :goto_5

    .line 139
    :cond_8
    invoke-virtual {v11, p1}, Lcom/amplitude/core/utilities/Connection;->setEvents$core(Ljava/lang/String;)V

    .line 140
    invoke-static {v9}, Lcom/amplitude/core/platform/EventPipeline;->access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;

    move-result-object v12

    invoke-virtual {v12}, Lcom/amplitude/core/Amplitude;->getDiagnostics()Lcom/amplitude/core/utilities/Diagnostics;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/amplitude/core/utilities/Connection;->setDiagnostics$core(Lcom/amplitude/core/utilities/Diagnostics;)V

    .line 142
    invoke-virtual {v11}, Lcom/amplitude/core/utilities/Connection;->close()V

    .line 145
    :goto_5
    invoke-virtual {v9}, Lcom/amplitude/core/platform/EventPipeline;->getResponseHandler()Lcom/amplitude/core/utilities/ResponseHandler;

    move-result-object v12

    invoke-virtual {v11}, Lcom/amplitude/core/utilities/Connection;->getResponse$core()Lcom/amplitude/core/utilities/Response;

    move-result-object v11

    invoke-interface {v12, v11, v6, p1}, Lcom/amplitude/core/utilities/ResponseHandler;->handle(Lcom/amplitude/core/utilities/Response;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    move-object v6, v7

    move-object v7, v8

    move-object p1, v9

    move-object v8, v10

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v8, v10

    goto :goto_a

    :catch_2
    move-exception p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    goto :goto_8

    :catch_4
    move-exception v9

    move-object v13, v9

    move-object v9, p1

    move-object p1, v13

    .line 151
    :goto_7
    :try_start_6
    invoke-static {v9}, Lcom/amplitude/core/platform/EventPipeline;->access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v10

    const-string v11, "Error when uploading event"

    invoke-static {p1, v10, v11}, Lcom/amplitude/core/utilities/LoggerExtensionsKt;->logWithStackTrace(Ljava/lang/Exception;Lcom/amplitude/common/Logger;Ljava/lang/String;)V

    goto :goto_9

    :catch_5
    move-exception v9

    move-object v13, v9

    move-object v9, p1

    move-object p1, v13

    .line 147
    :goto_8
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_9

    .line 148
    :cond_9
    invoke-static {v9}, Lcom/amplitude/core/platform/EventPipeline;->access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v10

    const-string v11, "Event storage file not found: "

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v10, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    :goto_9
    move-object p1, v9

    goto/16 :goto_3

    :cond_a
    move-object v6, v7

    goto/16 :goto_0

    .line 206
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    invoke-static {v8, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 155
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    .line 210
    :goto_a
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 207
    invoke-static {v8, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0
.end method
