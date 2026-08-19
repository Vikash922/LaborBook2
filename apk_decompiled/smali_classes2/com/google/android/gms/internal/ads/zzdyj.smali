.class public final synthetic Lcom/google/android/gms/internal/ads/zzdyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdyu;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfgc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zza:Lcom/google/android/gms/internal/ads/zzdyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zzd:Lcom/google/android/gms/internal/ads/zzbuy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zze:Lcom/google/android/gms/internal/ads/zzfgc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zza:Lcom/google/android/gms/internal/ads/zzdyu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zzd:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyj;->zze:Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyu;->zzk(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfgc;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
