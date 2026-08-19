.class final Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RxSharedPreferencesMigration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->build()Landroidx/datastore/core/DataMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/datastore/migrations/SharedPreferencesView;",
        "TT;",
        "Lkotlin/coroutines/Continuation<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "T",
        "spView",
        "Landroidx/datastore/migrations/SharedPreferencesView;",
        "curData"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$4"
    f = "RxSharedPreferencesMigration.kt"
    i = {}
    l = {
        0x79
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->this$0:Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/datastore/migrations/SharedPreferencesView;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/migrations/SharedPreferencesView;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;

    iget-object v1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->this$0:Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;

    invoke-direct {v0, v1, p3}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;-><init>(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/migrations/SharedPreferencesView;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->invoke(Landroidx/datastore/migrations/SharedPreferencesView;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget v1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/migrations/SharedPreferencesView;

    iget-object v1, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->L$1:Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->this$0:Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;

    invoke-static {v3}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;->access$getRxSharedPreferencesMigration$p(Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;)Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;->migrate(Landroidx/datastore/migrations/SharedPreferencesView;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/core/SingleSource;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder$build$4;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt;->await(Lio/reactivex/rxjava3/core/SingleSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
