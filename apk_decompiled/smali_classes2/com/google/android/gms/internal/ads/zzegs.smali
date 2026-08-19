.class public final synthetic Lcom/google/android/gms/internal/ads/zzegs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzegx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfau;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfbg;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdoi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegx;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzdoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:Lcom/google/android/gms/internal/ads/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Lcom/google/android/gms/internal/ads/zzdoi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:Lcom/google/android/gms/internal/ads/zzegx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzegx;->zzc(Lcom/google/android/gms/internal/ads/zzegx;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzdoi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
