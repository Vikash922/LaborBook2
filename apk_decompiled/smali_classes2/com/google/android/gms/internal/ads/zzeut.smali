.class public final Lcom/google/android/gms/internal/ads/zzeut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeut;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckc;->zza()Lcom/google/android/gms/internal/ads/zzbyo;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbyo;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgcd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeut;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzevc;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzevc;->zza()Ljava/lang/String;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeur;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeur;-><init>(Lcom/google/android/gms/internal/ads/zzbyo;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/lang/String;)V

    return-object v3
.end method
