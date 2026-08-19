.class public final Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;
.super Lcom/truecaller/android/sdk/oAuth/OAuthResponse;
.source "OAuthResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/oAuth/OAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailureResponse"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\t\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\nH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;",
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse;",
        "tcOAuthError",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;",
        "(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V",
        "getTcOAuthError",
        "()Lcom/truecaller/android/sdk/oAuth/TcOAuthError;",
        "component1",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "sdk-external_googlePlayOAuthReleasePartner"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse$Creator;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V
    .locals 2

    const-string v0, "tcOAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;Lcom/truecaller/android/sdk/oAuth/TcOAuthError;ILjava/lang/Object;)Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->copy(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/truecaller/android/sdk/oAuth/TcOAuthError;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    return-object v0
.end method

.method public final copy(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;
    .locals 1

    const-string v0, "tcOAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    invoke-direct {v0, p1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    iget-object v1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    iget-object p1, p1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTcOAuthError()Lcom/truecaller/android/sdk/oAuth/TcOAuthError;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FailureResponse(tcOAuthError="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->tcOAuthError:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
