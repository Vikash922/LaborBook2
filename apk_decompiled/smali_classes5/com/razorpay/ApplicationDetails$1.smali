.class Lcom/razorpay/ApplicationDetails$1;
.super Ljava/lang/Object;
.source "ApplicationDetails.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/ApplicationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/razorpay/ApplicationDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/razorpay/ApplicationDetails;
    .locals 1

    .line 63
    new-instance v0, Lcom/razorpay/ApplicationDetails;

    invoke-direct {v0, p1}, Lcom/razorpay/ApplicationDetails;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/razorpay/ApplicationDetails$1;->createFromParcel(Landroid/os/Parcel;)Lcom/razorpay/ApplicationDetails;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/razorpay/ApplicationDetails;
    .locals 0

    .line 68
    new-array p1, p1, [Lcom/razorpay/ApplicationDetails;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/razorpay/ApplicationDetails$1;->newArray(I)[Lcom/razorpay/ApplicationDetails;

    move-result-object p1

    return-object p1
.end method
