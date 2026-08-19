.class final Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RoutingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/RoutingActivity;->ensureLocalOfferEndTimestamp(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.RoutingActivity"
    f = "RoutingActivity.kt"
    i = {
        0x0
    }
    l = {
        0xa7,
        0xab
    }
    m = "ensureLocalOfferEndTimestamp"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/laborbook/RoutingActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/RoutingActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/RoutingActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;->this$0:Lcom/laborbook/RoutingActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;->label:I

    iget-object p1, p0, Lcom/laborbook/RoutingActivity$ensureLocalOfferEndTimestamp$1;->this$0:Lcom/laborbook/RoutingActivity;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lcom/laborbook/RoutingActivity;->access$ensureLocalOfferEndTimestamp(Lcom/laborbook/RoutingActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
