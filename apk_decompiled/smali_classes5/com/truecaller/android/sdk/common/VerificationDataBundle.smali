.class public final Lcom/truecaller/android/sdk/common/VerificationDataBundle;
.super Ljava/lang/Object;
.source "VerificationDataBundle.java"


# static fields
.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final KEY_OTP:Ljava/lang/String; = "otp"

.field public static final KEY_REQUEST_NONCE:Ljava/lang/String; = "requestNonce"

.field public static final KEY_TTL:Ljava/lang/String; = "ttl"

.field public static final KEY_VERIFIED_PROFILE:Ljava/lang/String; = "profile"


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getProfile()Lcom/truecaller/android/sdk/common/models/TrueProfile;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->mMap:Ljava/util/Map;

    const-string v1, "profile"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    :try_start_0
    check-cast v0, Lcom/truecaller/android/sdk/common/models/TrueProfile;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 108
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
