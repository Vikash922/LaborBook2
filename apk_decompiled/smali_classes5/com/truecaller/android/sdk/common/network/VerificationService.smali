.class public interface abstract Lcom/truecaller/android/sdk/common/network/VerificationService;
.super Ljava/lang/Object;
.source "VerificationService.java"


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://sdk-otp-verification-noneu.truecaller.com/v3/otp/installation/"

.field public static final BASE_URL_OAUTH:Ljava/lang/String; = "https://sdk-otp-verification-noneu.truecaller.com/v2/otp/client/installation/"

.field public static final FINGERPRINT_HEADER:Ljava/lang/String; = "fingerPrint"

.field public static final JSON_KEY_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final JSON_KEY_PATTERN:Ljava/lang/String; = "pattern"

.field public static final JSON_KEY_REQ_NONCE:Ljava/lang/String; = "requestNonce"

.field public static final JSON_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final JSON_KEY_VERIFICATION_TOKEN:Ljava/lang/String; = "verificationToken"

.field public static final KEY_REQUEST_HEADER:Ljava/lang/String; = "appKey"

.field public static final OAUTH_CLIENT_ID_REQUEST_HEADER:Ljava/lang/String; = "clientId"


# virtual methods
.method public abstract createInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "appKey"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "fingerPrint"
        .end annotation
    .end param
    .param p3    # Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "create"
    .end annotation
.end method

.method public abstract createInstallationOAuth(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "clientId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "fingerPrint"
        .end annotation
    .end param
    .param p3    # Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "create"
    .end annotation
.end method

.method public abstract verifyInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "appKey"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "fingerPrint"
        .end annotation
    .end param
    .param p3    # Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "verify"
    .end annotation
.end method

.method public abstract verifyInstallationOAuth(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "clientId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "fingerPrint"
        .end annotation
    .end param
    .param p3    # Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "verify"
    .end annotation
.end method
