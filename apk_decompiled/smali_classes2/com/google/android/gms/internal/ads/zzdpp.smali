.class public final synthetic Lcom/google/android/gms/internal/ads/zzdpp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbf;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbbn$zzt$zza;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzt$zza;->zze()Lcom/google/android/gms/internal/ads/zzbbn$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbc()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzt$zza;->zze()Lcom/google/android/gms/internal/ads/zzbbn$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzad()Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbc()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbn$zzi$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfax;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbn$zzi$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbn$zzi$zza;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;->zzT(Lcom/google/android/gms/internal/ads/zzbbn$zzi$zza;)Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzt$zza;->zzG(Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;)Lcom/google/android/gms/internal/ads/zzbbn$zzt$zza;

    return-void
.end method
