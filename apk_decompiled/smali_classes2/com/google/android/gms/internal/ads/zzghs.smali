.class public final synthetic Lcom/google/android/gms/internal/ads/zzghs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnv;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgia;->zza:Lcom/google/android/gms/internal/ads/zzgfz;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgfy;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zza(I)Lcom/google/android/gms/internal/ads/zzgfw;

    const/16 v1, 0x20

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzb(I)Lcom/google/android/gms/internal/ads/zzgfw;

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfx;->zza:Lcom/google/android/gms/internal/ads/zzgfx;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;->zzd(Lcom/google/android/gms/internal/ads/zzgfx;)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zze()Lcom/google/android/gms/internal/ads/zzgfz;

    move-result-object v0

    return-object v0
.end method
