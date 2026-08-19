.class public interface abstract Lcom/truecaller/android/sdk/common/network/ProfileService;
.super Ljava/lang/Object;
.source "ProfileService.java"


# static fields
.field public static final ACCESS_TOKEN_PREFIX:Ljava/lang/String; = "Bearer %s"

.field public static final BASE_URL:Ljava/lang/String; = "https://outline.truecaller.com/v1/"

.field public static final KEY_REQUEST_HEADER:Ljava/lang/String; = "Authorization"


# virtual methods
.method public abstract createProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/truecaller/android/sdk/common/models/TrueProfile;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/android/sdk/common/models/TrueProfile;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "profile"
    .end annotation
.end method

.method public abstract fetchProfile(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/truecaller/android/sdk/common/models/TrueProfile;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "profile"
    .end annotation
.end method
