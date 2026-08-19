.class public final Lcom/google/android/gms/internal/ads/zzeke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdib;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzejr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcvf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdib;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeke;->zza:Lcom/google/android/gms/internal/ads/zzdib;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzejr;-><init>(Lcom/google/android/gms/internal/ads/zzdre;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzejr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdib;->zzg()Lcom/google/android/gms/internal/ads/zzbmc;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekd;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzekd;-><init>(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzbmc;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzc:Lcom/google/android/gms/internal/ads/zzcvf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcvf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzc:Lcom/google/android/gms/internal/ads/zzcvf;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcwq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdfv;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzejr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeke;->zza:Lcom/google/android/gms/internal/ads/zzdib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejr;->zzg()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdfv;-><init>(Lcom/google/android/gms/internal/ads/zzdib;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeke;->zzb:Lcom/google/android/gms/internal/ads/zzejr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzejr;->zzj(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method
