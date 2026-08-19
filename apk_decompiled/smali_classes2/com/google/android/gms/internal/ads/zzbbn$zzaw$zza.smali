.class public final Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;
.super Lcom/google/android/gms/internal/ads/zzgxp;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbn$zzax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgxp<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzaw;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzax;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzf()Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzu(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;)V

    return-object p0
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zzb;)Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzv(Lcom/google/android/gms/internal/ads/zzbbn$zzaw;Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zzb;)V

    return-object p0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzc()Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaw;->zzd()Z

    move-result v0

    return v0
.end method
