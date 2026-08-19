.class public final Lcom/laborbook/RoutingActivity$initRemoteConfig$2;
.super Ljava/lang/Object;
.source "RoutingActivity.kt"

# interfaces
.implements Lcom/google/firebase/remoteconfig/ConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/RoutingActivity;->initRemoteConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/laborbook/RoutingActivity$initRemoteConfig$2",
        "Lcom/google/firebase/remoteconfig/ConfigUpdateListener;",
        "onUpdate",
        "",
        "configUpdate",
        "Lcom/google/firebase/remoteconfig/ConfigUpdate;",
        "onError",
        "error",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;",
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
.field final synthetic this$0:Lcom/laborbook/RoutingActivity;


# direct methods
.method public static synthetic $r8$lambda$tQhmtNGt9wxJGldePJSIi06kLgA(Lcom/laborbook/RoutingActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/RoutingActivity$initRemoteConfig$2;->onUpdate$lambda$0(Lcom/laborbook/RoutingActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/RoutingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/RoutingActivity$initRemoteConfig$2;->this$0:Lcom/laborbook/RoutingActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onUpdate$lambda$0(Lcom/laborbook/RoutingActivity;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lcom/laborbook/RoutingActivity;->access$getRemoteConfig$p(Lcom/laborbook/RoutingActivity;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "remoteConfig"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const-string v2, "google_ads_enabled"

    invoke-virtual {p1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 133
    invoke-static {p0}, Lcom/laborbook/RoutingActivity;->access$getRemoteConfig$p(Lcom/laborbook/RoutingActivity;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v1, "home_page_ads_enabled"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    invoke-static {p0, p1, v0}, Lcom/laborbook/RoutingActivity;->access$updateGoogleAdsConfig(Lcom/laborbook/RoutingActivity;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Lcom/google/firebase/remoteconfig/ConfigUpdate;)V
    .locals 2

    const-string v0, "configUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object v0

    const-string v1, "google_ads_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object v0

    const-string v1, "home_page_ads_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object v0

    const-string v1, "custom_ad_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object v0

    const-string v1, "custom_ad_image_url"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object v0

    const-string v1, "custom_ad_redirect_url"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object v0

    const-string v1, "custom_ad_title"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object p1

    const-string v0, "subscriptions_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/laborbook/RoutingActivity$initRemoteConfig$2;->this$0:Lcom/laborbook/RoutingActivity;

    invoke-static {p1}, Lcom/laborbook/RoutingActivity;->access$getRemoteConfig$p(Lcom/laborbook/RoutingActivity;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "remoteConfig"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/RoutingActivity$initRemoteConfig$2;->this$0:Lcom/laborbook/RoutingActivity;

    new-instance v1, Lcom/laborbook/RoutingActivity$initRemoteConfig$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/laborbook/RoutingActivity$initRemoteConfig$2$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/RoutingActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2
    return-void
.end method
