.class public final Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;
.super Ljava/lang/Object;
.source "SubscriptionsFeatureFlag.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Use com.laborbook.base.utils.SubscriptionsFeatureFlag instead"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "BaseSubscriptionsFeatureFlag"
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;",
        "",
        "<init>",
        "()V",
        "isSubscriptionsEnabled",
        "",
        "remoteConfig",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
        "getFreeUserMaxStaffCount",
        "",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-direct {v0}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;-><init>()V

    sput-object v0, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFreeUserMaxStaffCount(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)I
    .locals 1

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v0, p1}, Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;->getFreeUserMaxStaffCount(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)I

    move-result p1

    return p1
.end method

.method public final isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z
    .locals 1

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v0, p1}, Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result p1

    return p1
.end method
