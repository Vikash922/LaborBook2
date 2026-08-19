.class public final Lcom/laborbook/auth/model/request/AuthResponse;
.super Ljava/lang/Object;
.source "AuthRequestBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J-\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/laborbook/auth/model/request/AuthResponse;",
        "",
        "authToken",
        "",
        "tokenType",
        "user",
        "Lcom/laborbook/auth/model/request/User;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;)V",
        "getAuthToken",
        "()Ljava/lang/String;",
        "getTokenType",
        "getUser",
        "()Lcom/laborbook/auth/model/request/User;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_token"
    .end annotation
.end field

.field private final tokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field

.field private final user:Lcom/laborbook/auth/model/request/User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/auth/model/request/AuthResponse;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;ILjava/lang/Object;)Lcom/laborbook/auth/model/request/AuthResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/auth/model/request/AuthResponse;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;)Lcom/laborbook/auth/model/request/AuthResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/laborbook/auth/model/request/User;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;)Lcom/laborbook/auth/model/request/AuthResponse;
    .locals 1

    new-instance v0, Lcom/laborbook/auth/model/request/AuthResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/laborbook/auth/model/request/AuthResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/auth/model/request/User;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/auth/model/request/AuthResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/auth/model/request/AuthResponse;

    iget-object v1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    iget-object p1, p1, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAuthToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/laborbook/auth/model/request/User;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/laborbook/auth/model/request/User;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthResponse(authToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/auth/model/request/AuthResponse;->user:Lcom/laborbook/auth/model/request/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
