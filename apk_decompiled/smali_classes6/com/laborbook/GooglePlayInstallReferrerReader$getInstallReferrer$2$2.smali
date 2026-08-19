.class public final Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;
.super Ljava/lang/Object;
.source "GooglePlayInstallReferrerReader.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/GooglePlayInstallReferrerReader;->getInstallReferrer(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "onInstallReferrerSetupFinished",
        "",
        "responseCode",
        "",
        "onInstallReferrerServiceDisconnected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $client:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/laborbook/GooglePlayInstallReferrerReader$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/installreferrer/api/InstallReferrerClient;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/laborbook/GooglePlayInstallReferrerReader$Result;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$client:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p2, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 4

    .line 52
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    const-string v1, "GooglePlayInstallReferrerReader: service disconnected -> organic"

    invoke-virtual {v0, v1}, Lcom/laborbook/base/Logger;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;

    const-string v2, "organic"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 6

    const-string v0, "GooglePlayInstallReferrerReader: referrer="

    const-string v1, "GooglePlayInstallReferrerReader: response="

    const/4 v2, 0x0

    .line 32
    const-string v3, "organic"

    if-nez p1, :cond_0

    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$client:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$client:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 35
    sget-object v1, Lcom/laborbook/GooglePlayInstallReferrerReader;->INSTANCE:Lcom/laborbook/GooglePlayInstallReferrerReader;

    invoke-static {v1, p1}, Lcom/laborbook/GooglePlayInstallReferrerReader;->access$parseSource(Lcom/laborbook/GooglePlayInstallReferrerReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    sget-object v4, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/laborbook/base/Logger;->d(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v4, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;

    invoke-direct {v4, v1, p1}, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$client:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 41
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -> organic"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/laborbook/base/Logger;->d(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;

    invoke-direct {v0, v3, v2}, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "GooglePlayInstallReferrerReader: error reading referrer: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/laborbook/base/Logger;->e(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/laborbook/GooglePlayInstallReferrerReader$getInstallReferrer$2$2;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;

    invoke-direct {v0, v3, v2}, Lcom/laborbook/GooglePlayInstallReferrerReader$Result;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
