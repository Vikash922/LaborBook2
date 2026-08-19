.class public final synthetic Lcom/google/android/gms/internal/ads/zzedf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzedg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfbg;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfau;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedg;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedf;->zza:Lcom/google/android/gms/internal/ads/zzedg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedf;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedf;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedf;->zza:Lcom/google/android/gms/internal/ads/zzedg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedf;->zzb:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedf;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzedg;->zzc(Lcom/google/android/gms/internal/ads/zzedg;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
