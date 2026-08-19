.class public final Lcom/google/android/gms/internal/ads/zzdsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbki;)Lcom/google/android/gms/internal/ads/zzdsk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsk;-><init>(Lcom/google/android/gms/internal/ads/zzbki;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdsk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbki;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdsk;-><init>(Lcom/google/android/gms/internal/ads/zzbki;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsl;->zza()Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v0

    return-object v0
.end method
