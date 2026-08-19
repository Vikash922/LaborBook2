.class public final Lcom/google/android/gms/internal/ads/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfww;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfg;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfi;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzfm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfe;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzfi;Lcom/google/android/gms/internal/ads/zzfm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfn;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzc:Lcom/google/android/gms/internal/ads/zzfi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfn;->zzd:Lcom/google/android/gms/internal/ads/zzfm;

    return-void
.end method
