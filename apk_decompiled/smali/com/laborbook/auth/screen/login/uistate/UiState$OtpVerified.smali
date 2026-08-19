.class public final Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;
.super Lcom/laborbook/auth/screen/login/uistate/UiState;
.source "UiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/auth/screen/login/uistate/UiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtpVerified"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;",
        "Lcom/laborbook/auth/screen/login/uistate/UiState;",
        "authResponse",
        "Lcom/laborbook/auth/model/request/AuthResponse;",
        "<init>",
        "(Lcom/laborbook/auth/model/request/AuthResponse;)V",
        "getAuthResponse",
        "()Lcom/laborbook/auth/model/request/AuthResponse;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "auth_release"
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
.field private final authResponse:Lcom/laborbook/auth/model/request/AuthResponse;


# direct methods
.method public constructor <init>(Lcom/laborbook/auth/model/request/AuthResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/laborbook/auth/screen/login/uistate/UiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;Lcom/laborbook/auth/model/request/AuthResponse;ILjava/lang/Object;)Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->copy(Lcom/laborbook/auth/model/request/AuthResponse;)Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/laborbook/auth/model/request/AuthResponse;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    return-object v0
.end method

.method public final copy(Lcom/laborbook/auth/model/request/AuthResponse;)Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;
    .locals 1

    new-instance v0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;

    invoke-direct {v0, p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;-><init>(Lcom/laborbook/auth/model/request/AuthResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    iget-object p1, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAuthResponse()Lcom/laborbook/auth/model/request/AuthResponse;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/auth/model/request/AuthResponse;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OtpVerified(authResponse="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->authResponse:Lcom/laborbook/auth/model/request/AuthResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
