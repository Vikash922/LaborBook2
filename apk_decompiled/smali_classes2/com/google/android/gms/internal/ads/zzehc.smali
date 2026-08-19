.class final Lcom/google/android/gms/internal/ads/zzehc;
.super Lcom/google/android/gms/internal/ads/zzbvu;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcxi;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcva;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcwj;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzcxi;Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzddl;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzcxi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzcva;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzcwj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzb:Lcom/google/android/gms/internal/ads/zzcva;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcva;->onAdClicked()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzcxi;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcxi;->zzds(I)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzb()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzcxi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxi;->zzdp()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvw;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzddl;->zza(Lcom/google/android/gms/internal/ads/zzbvw;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzddl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzddl;->zza(Lcom/google/android/gms/internal/ads/zzbvw;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzc:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwj;->zze()V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->zzd:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddl;->zzc()V

    return-void
.end method
