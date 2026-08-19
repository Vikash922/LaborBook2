.class public final Lcom/google/android/gms/internal/ads/zzdqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdqx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqw;->zza:Lcom/google/android/gms/internal/ads/zzdqx;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffn;->zzA:Lcom/google/android/gms/internal/ads/zzffn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->zzd:Lcom/google/android/gms/internal/ads/zzffn;

    const-string v3, "t_load_as"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffn;Lcom/google/android/gms/internal/ads/zzffn;)V

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrg;

    return-object v0
.end method
