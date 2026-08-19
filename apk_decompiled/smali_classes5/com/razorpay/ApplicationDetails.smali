.class public Lcom/razorpay/ApplicationDetails;
.super Ljava/lang/Object;
.source "ApplicationDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appLogoUrl:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private iconBase64:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/razorpay/ApplicationDetails$1;

    invoke-direct {v0}, Lcom/razorpay/ApplicationDetails$1;-><init>()V

    sput-object v0, Lcom/razorpay/ApplicationDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/ApplicationDetails;->appName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/ApplicationDetails;->iconBase64:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/ApplicationDetails;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/razorpay/ApplicationDetails;->appLogoUrl:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/razorpay/ApplicationDetails;->appName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/razorpay/ApplicationDetails;->iconBase64:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/razorpay/ApplicationDetails;->packageName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/razorpay/ApplicationDetails;->appLogoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppLogoUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/razorpay/ApplicationDetails;->appLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/razorpay/ApplicationDetails;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBase64()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/razorpay/ApplicationDetails;->iconBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/razorpay/ApplicationDetails;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 47
    iget-object p2, p0, Lcom/razorpay/ApplicationDetails;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/razorpay/ApplicationDetails;->iconBase64:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/razorpay/ApplicationDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/razorpay/ApplicationDetails;->appLogoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
