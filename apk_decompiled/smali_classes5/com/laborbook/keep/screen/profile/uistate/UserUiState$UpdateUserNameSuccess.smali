.class public final Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;
.super Lcom/laborbook/keep/screen/profile/uistate/UserUiState;
.source "UserUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/profile/uistate/UserUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateUserNameSuccess"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;",
        "Lcom/laborbook/keep/screen/profile/uistate/UserUiState;",
        "name",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/profile/uistate/UserUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->copy(Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;

    invoke-direct {v0, p1}, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;

    iget-object v1, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateUserNameSuccess(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
