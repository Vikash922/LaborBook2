.class public final Lcom/google/android/gms/internal/ads/zzcjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zza:Lcom/google/android/gms/internal/ads/zzcja;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcja;)Lcom/google/android/gms/ads/internal/zza;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzccd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzccd;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcay;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcay;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzccd;Lcom/google/android/gms/internal/ads/zzcan;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zza:Lcom/google/android/gms/internal/ads/zzcja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjb;->zzc(Lcom/google/android/gms/internal/ads/zzcja;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zza:Lcom/google/android/gms/internal/ads/zzcja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjb;->zzc(Lcom/google/android/gms/internal/ads/zzcja;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method
