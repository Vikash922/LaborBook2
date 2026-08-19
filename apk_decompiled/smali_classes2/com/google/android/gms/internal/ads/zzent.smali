.class public final Lcom/google/android/gms/internal/ads/zzent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdoz;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdoz;Lcom/google/android/gms/internal/ads/zzfbp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzent;->zzb:Lcom/google/android/gms/internal/ads/zzdoz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzent;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzent;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzent;)Lcom/google/android/gms/internal/ads/zzenu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzent;->zzb:Lcom/google/android/gms/internal/ads/zzdoz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzent;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdoz;->zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdoz;->zza()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzenu;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzens;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzens;-><init>(Lcom/google/android/gms/internal/ads/zzent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
