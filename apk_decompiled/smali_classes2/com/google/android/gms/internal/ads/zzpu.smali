.class public final synthetic Lcom/google/android/gms/internal/ads/zzpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpx;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzpx;->zzi(Lcom/google/android/gms/internal/ads/zzpx;Z)V

    return-void
.end method
