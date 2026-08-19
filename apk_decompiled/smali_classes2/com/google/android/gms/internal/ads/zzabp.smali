.class public final synthetic Lcom/google/android/gms/internal/ads/zzabp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzabr;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzhy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabp;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabp;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabp;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzf(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzhy;)V

    return-void
.end method
