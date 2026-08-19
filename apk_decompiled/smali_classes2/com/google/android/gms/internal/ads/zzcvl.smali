.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdas;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdfl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdfl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zza:Lcom/google/android/gms/internal/ads/zzdfl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zza:Lcom/google/android/gms/internal/ads/zzdfl;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfl;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal show error."

    :cond_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcvs;->zzr(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
