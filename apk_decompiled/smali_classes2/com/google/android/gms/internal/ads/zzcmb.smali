.class public final Lcom/google/android/gms/internal/ads/zzcmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfax;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfbg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfik;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfik;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzc:Lcom/google/android/gms/internal/ads/zzfik;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zza:Lcom/google/android/gms/internal/ads/zzfax;

    return-void
.end method


# virtual methods
.method public final zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zza:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfax;->zza:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzc:Lcom/google/android/gms/internal/ads/zzfik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzfik;->zzd(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfio;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    return-void
.end method
