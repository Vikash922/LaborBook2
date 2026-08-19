.class final Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "OtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/OtpFragment;->storeUserDetails(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.laborbook.auth.screen.login.view.OtpFragment"
    f = "OtpFragment.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x5,
        0x6,
        0x7,
        0x8,
        0x9,
        0xa,
        0xb,
        0xb,
        0xc,
        0xc,
        0xd,
        0xd,
        0xe,
        0xe,
        0xf
    }
    l = {
        0xb5,
        0xb6,
        0xb7,
        0xb8,
        0xb9,
        0xba,
        0xbb,
        0xc0,
        0xc6,
        0xcb,
        0xcf,
        0xd6,
        0xd7,
        0xd8,
        0xd9,
        0xda
    }
    m = "storeUserDetails"
    n = {
        "this",
        "user",
        "this",
        "user",
        "this",
        "user",
        "this",
        "user",
        "this",
        "user",
        "this",
        "this",
        "this",
        "this",
        "this",
        "this",
        "this",
        "ampIdentify",
        "this",
        "ampIdentify",
        "this",
        "ampIdentify",
        "this",
        "ampIdentify",
        "ampIdentify"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/screen/login/view/OtpFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->label:I

    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$storeUserDetails$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->access$storeUserDetails(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
