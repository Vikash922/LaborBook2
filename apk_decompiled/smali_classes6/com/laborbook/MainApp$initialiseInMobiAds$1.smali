.class public final Lcom/laborbook/MainApp$initialiseInMobiAds$1;
.super Ljava/lang/Object;
.source "MainApp.kt"

# interfaces
.implements Lcom/inmobi/sdk/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/MainApp;->initialiseInMobiAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/laborbook/MainApp$initialiseInMobiAds$1",
        "Lcom/inmobi/sdk/SdkInitializationListener;",
        "onInitializationComplete",
        "",
        "error",
        "Ljava/lang/Error;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Ljava/lang/Error;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 145
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobi Init failed -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/laborbook/base/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    sget-object p1, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    const-string v0, "InMobi Init Successful"

    invoke-virtual {p1, v0}, Lcom/laborbook/base/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
