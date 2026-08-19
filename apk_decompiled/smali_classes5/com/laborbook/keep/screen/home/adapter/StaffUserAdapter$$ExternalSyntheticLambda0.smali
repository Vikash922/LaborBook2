.class public final synthetic Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/laborbook/keep/model/StaffUser;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/laborbook/keep/model/StaffUser;

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/laborbook/keep/model/StaffUser;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;->$r8$lambda$E1p_W6NEAdv9lw0HUyYyiXKZ61Y(Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;Ljava/lang/String;ILcom/laborbook/keep/model/StaffUser;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
