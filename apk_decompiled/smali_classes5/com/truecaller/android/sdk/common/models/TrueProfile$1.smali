.class Lcom/truecaller/android/sdk/common/models/TrueProfile$1;
.super Ljava/lang/Object;
.source "TrueProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/common/models/TrueProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/truecaller/android/sdk/common/models/TrueProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/truecaller/android/sdk/common/models/TrueProfile;
    .locals 2

    .line 273
    new-instance v0, Lcom/truecaller/android/sdk/common/models/TrueProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/truecaller/android/sdk/common/models/TrueProfile;-><init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/common/models/TrueProfile-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/models/TrueProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/truecaller/android/sdk/common/models/TrueProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/truecaller/android/sdk/common/models/TrueProfile;
    .locals 0

    .line 278
    new-array p1, p1, [Lcom/truecaller/android/sdk/common/models/TrueProfile;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/models/TrueProfile$1;->newArray(I)[Lcom/truecaller/android/sdk/common/models/TrueProfile;

    move-result-object p1

    return-object p1
.end method
