.class public final Lcom/google/android/gms/internal/ads/zzfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfww;

.field public final zzb:[I


# direct methods
.method public constructor <init>(Ljava/util/List;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzb:[I

    return-void
.end method
