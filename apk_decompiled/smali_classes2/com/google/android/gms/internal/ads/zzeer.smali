.class public final synthetic Lcom/google/android/gms/internal/ads/zzeer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeeu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfau;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeer;->zza:Lcom/google/android/gms/internal/ads/zzeeu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeer;->zza:Lcom/google/android/gms/internal/ads/zzeeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeer;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeeu;->zze(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
