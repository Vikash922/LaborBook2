.class public final Lcom/google/android/gms/internal/ads/zzcpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfft;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgcd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzedr;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzedr;->zza()Lcom/google/android/gms/internal/ads/zzedq;

    move-result-object v2

    .line 1
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzedq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzehg;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzehg;->zza()Lcom/google/android/gms/internal/ads/zzehf;

    move-result-object v3

    .line 1
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzehf;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehm;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzehm;-><init>(Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzech;Lcom/google/android/gms/internal/ads/zzecl;)V

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzecf;

    return-object v4
.end method
