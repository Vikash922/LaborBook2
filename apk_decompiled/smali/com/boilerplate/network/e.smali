.class public final Lcom/boilerplate/network/e;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/boilerplate/network/NetworkResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/boilerplate/network/NetworkResource<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/NetworkResource<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/boilerplate/network/e;->this$0:Lcom/boilerplate/network/NetworkResource;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/boilerplate/network/e;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/boilerplate/network/e;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/boilerplate/network/e;->label:I

    iget-object p1, p0, Lcom/boilerplate/network/e;->this$0:Lcom/boilerplate/network/NetworkResource;

    invoke-static {p1, p0}, Lcom/boilerplate/network/NetworkResource;->access$fetchFromRemote(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
