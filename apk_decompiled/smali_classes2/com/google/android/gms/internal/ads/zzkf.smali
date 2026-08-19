.class public final synthetic Lcom/google/android/gms/internal/ads/zzkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzkn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzlq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzlq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkf;->zza:Lcom/google/android/gms/internal/ads/zzkn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzb:Lcom/google/android/gms/internal/ads/zzlq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zza:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzb:Lcom/google/android/gms/internal/ads/zzlq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzkn;->zzh(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzlq;)V

    return-void
.end method
