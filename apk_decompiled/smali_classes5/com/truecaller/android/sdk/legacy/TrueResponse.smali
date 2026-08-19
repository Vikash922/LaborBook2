.class public Lcom/truecaller/android/sdk/legacy/TrueResponse;
.super Ljava/lang/Object;
.source "TrueResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/legacy/TrueResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_SUCCESSFUL:Ljava/lang/String; = "TRUERESPONSE_IS_SUCCESSFUL"

.field public static final TRUECALLER_RESPONSE_EXTRA:Ljava/lang/String; = "TRUECALLER_RESPONSE_EXTRA"

.field public static final TRUESDK_VERSION:Ljava/lang/String; = "TRUERESPONSE_TRUESDK_VERSION"


# instance fields
.field public final isSuccessful:Z

.field public final trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

.field public final trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

.field private final truesdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/truecaller/android/sdk/legacy/TrueResponse$1;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/legacy/TrueResponse$1;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "TRUERESPONSE_IS_SUCCESSFUL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    .line 74
    const-string v1, "TRUERESPONSE_TRUESDK_VERSION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->truesdkVersion:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/truecaller/android/sdk/common/models/TrueProfile;

    invoke-direct {v0, p1}, Lcom/truecaller/android/sdk/common/models/TrueProfile;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    .line 77
    iput-object v1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    goto :goto_0

    .line 79
    :cond_0
    iput-object v1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    .line 80
    new-instance v0, Lcom/truecaller/android/sdk/legacy/TrueError;

    invoke-direct {v0, p1}, Lcom/truecaller/android/sdk/legacy/TrueError;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-class v0, Lcom/truecaller/android/sdk/common/models/TrueProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/sdk/common/models/TrueProfile;

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    .line 101
    const-class v0, Lcom/truecaller/android/sdk/legacy/TrueError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/sdk/legacy/TrueError;

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    .line 103
    const-string p1, "0.4.2"

    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->truesdkVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/legacy/TrueResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/legacy/TrueResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/common/models/TrueProfile;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    .line 62
    const-string p1, "2.9.0"

    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->truesdkVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/legacy/TrueError;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    .line 67
    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    .line 69
    const-string p1, "2.9.0"

    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->truesdkVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    const-string v0, "TRUERESPONSE_IS_SUCCESSFUL"

    iget-boolean v1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v0, "TRUERESPONSE_TRUESDK_VERSION"

    iget-object v1, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->truesdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/common/models/TrueProfile;->writeToBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/TrueError;->writeToBundle(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueProfile:Lcom/truecaller/android/sdk/common/models/TrueProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->trueError:Lcom/truecaller/android/sdk/legacy/TrueError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-boolean p2, p0, Lcom/truecaller/android/sdk/legacy/TrueResponse;->isSuccessful:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
