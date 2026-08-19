.class final Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/LoginFragment;->startCollageAutoScroll()V
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.auth.screen.login.view.LoginFragment$startCollageAutoScroll$4"
    f = "LoginFragment.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xba,
        0xcd
    }
    m = "invokeSuspend"
    n = {
        "col1",
        "col2",
        "col3",
        "scrollY"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/screen/login/view/LoginFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

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

    new-instance p1, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->I$0:I

    iget-object v5, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->L$2:Ljava/lang/Object;

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    iget-object v6, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/core/widget/NestedScrollView;

    iget-object v7, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move p1, v1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    :try_start_2
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->label:I

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 187
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->svCol1:Landroidx/core/widget/NestedScrollView;

    goto :goto_1

    :cond_5
    move-object p1, v1

    .line 188
    :goto_1
    iget-object v5, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {v5}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->svCol2:Landroidx/core/widget/NestedScrollView;

    goto :goto_2

    :cond_6
    move-object v5, v1

    .line 189
    :goto_2
    iget-object v6, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {v6}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v6

    check-cast v6, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v6, :cond_7

    iget-object v1, v6, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->svCol3:Landroidx/core/widget/NestedScrollView;

    :cond_7
    if-eqz p1, :cond_c

    if-eqz v5, :cond_c

    if-nez v1, :cond_8

    goto/16 :goto_7

    :cond_8
    move-object v7, p1

    move p1, v3

    move-object v6, v5

    move-object v5, v1

    .line 193
    :goto_3
    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    if-eqz v1, :cond_d

    add-int/lit8 v1, p1, 0x1

    .line 196
    invoke-virtual {v7, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    sub-int/2addr p1, v8

    goto :goto_4

    :cond_9
    move p1, v4

    .line 197
    :goto_4
    invoke-virtual {v6, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_5

    :cond_a
    move v8, v4

    .line 198
    :goto_5
    invoke-virtual {v5, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_6

    :cond_b
    move v9, v4

    .line 201
    :goto_6
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    rem-int p1, v1, p1

    invoke-virtual {v7, v3, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 202
    div-int/lit8 p1, v8, 0x3

    add-int/2addr p1, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    rem-int/2addr p1, v8

    invoke-virtual {v6, v3, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 203
    div-int/lit8 p1, v9, 0x2

    add-int/2addr p1, v1

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    rem-int/2addr p1, v8

    invoke-virtual {v5, v3, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 205
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->L$2:Ljava/lang/Object;

    iput v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->I$0:I

    iput v2, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;->label:I

    const-wide/16 v8, 0x1e

    invoke-static {v8, v9, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 190
    :cond_c
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 208
    :catch_0
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
