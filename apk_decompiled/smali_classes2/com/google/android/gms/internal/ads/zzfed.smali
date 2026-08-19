.class public final synthetic Lcom/google/android/gms/internal/ads/zzfed;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfee;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfdw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfee;Lcom/google/android/gms/internal/ads/zzfdw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lcom/google/android/gms/internal/ads/zzfee;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfdw;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lcom/google/android/gms/internal/ads/zzfee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfdw;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfee;->zza(Lcom/google/android/gms/internal/ads/zzfee;Lcom/google/android/gms/internal/ads/zzfdw;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
