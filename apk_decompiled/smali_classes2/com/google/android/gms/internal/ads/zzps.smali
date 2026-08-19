.class public final synthetic Lcom/google/android/gms/internal/ads/zzps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpx;

.field public final synthetic zzb:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzpx;->zzf(Lcom/google/android/gms/internal/ads/zzpx;Ljava/lang/Exception;)V

    return-void
.end method
