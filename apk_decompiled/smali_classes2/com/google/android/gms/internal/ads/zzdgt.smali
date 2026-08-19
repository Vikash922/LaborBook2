.class public final Lcom/google/android/gms/internal/ads/zzdgt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zza:Lcom/google/android/gms/internal/ads/zzdgo;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdgo;)Lcom/google/android/gms/internal/ads/zzdmt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdgo;->zza()Lcom/google/android/gms/internal/ads/zzdmt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfg;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmt;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdmt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zza:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzc(Lcom/google/android/gms/internal/ads/zzdgo;)Lcom/google/android/gms/internal/ads/zzdmt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zza:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->zzc(Lcom/google/android/gms/internal/ads/zzdgo;)Lcom/google/android/gms/internal/ads/zzdmt;

    move-result-object v0

    return-object v0
.end method
