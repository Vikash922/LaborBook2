.class final Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CoachMarkManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/utils/CoachMarkManager;->shouldShowCoachMark(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.laborbook.keep.utils.CoachMarkManager"
    f = "CoachMarkManager.kt"
    i = {}
    l = {
        0x22
    }
    m = "shouldShowCoachMark"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/laborbook/keep/utils/CoachMarkManager;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/utils/CoachMarkManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/utils/CoachMarkManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->this$0:Lcom/laborbook/keep/utils/CoachMarkManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    iget-object p1, p0, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->this$0:Lcom/laborbook/keep/utils/CoachMarkManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/keep/utils/CoachMarkManager;->shouldShowCoachMark(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
