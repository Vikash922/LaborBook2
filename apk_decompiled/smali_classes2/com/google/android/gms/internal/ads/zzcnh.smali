.class public final Lcom/google/android/gms/internal/ads/zzcnh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdre;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzfbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnh;->zza:Lcom/google/android/gms/internal/ads/zzdre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnh;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    return-void
.end method


# virtual methods
.method public final zza(JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnh;->zza:Lcom/google/android/gms/internal/ads/zzdre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnh;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzd(Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string v1, "action"

    const-string v2, "ad_closed"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string v1, "show_time"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string p1, "ad_format"

    const-string p2, "app_open_ad"

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const-string p1, "u"

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "ac"

    goto :goto_0

    :cond_1
    const-string p1, "cb"

    goto :goto_0

    :cond_2
    const-string p1, "cc"

    goto :goto_0

    :cond_3
    const-string p1, "bb"

    goto :goto_0

    :cond_4
    const-string p1, "h"

    .line 5
    :goto_0
    const-string p2, "acr"

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzj()V

    return-void
.end method
