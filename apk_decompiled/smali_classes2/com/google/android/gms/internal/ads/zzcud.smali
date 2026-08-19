.class public final synthetic Lcom/google/android/gms/internal/ads/zzcud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcuf;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic zzc:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcud;->zza:Lcom/google/android/gms/internal/ads/zzcuf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcud;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcud;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcud;->zza:Lcom/google/android/gms/internal/ads/zzcuf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcud;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcud;->zzc:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcuf;->zza(Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbuy;

    move-result-object v0

    return-object v0
.end method
