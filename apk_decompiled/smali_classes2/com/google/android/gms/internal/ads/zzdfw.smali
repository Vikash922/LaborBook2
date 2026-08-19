.class public final Lcom/google/android/gms/internal/ads/zzdfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdfv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfw;->zza:Lcom/google/android/gms/internal/ads/zzdfv;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfw;->zza:Lcom/google/android/gms/internal/ads/zzdfv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfv;->zza()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfw;->zza:Lcom/google/android/gms/internal/ads/zzdfv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfv;->zza()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    return-object v0
.end method
