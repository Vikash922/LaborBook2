.class final Lcom/google/android/gms/internal/ads/zzawj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzawk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zza:Lcom/google/android/gms/internal/ads/zzawk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    if-eqz p4, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zza:Lcom/google/android/gms/internal/ads/zzawk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzawk;->zzg(Lcom/google/android/gms/internal/ads/zzawk;J)V

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzawk;->zzf(Lcom/google/android/gms/internal/ads/zzawk;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zza:Lcom/google/android/gms/internal/ads/zzawk;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawk;->zza(Lcom/google/android/gms/internal/ads/zzawk;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-lez p4, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawk;->zza(Lcom/google/android/gms/internal/ads/zzawk;)J

    move-result-wide v0

    cmp-long p4, p2, v0

    if-ltz p4, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawk;->zza(Lcom/google/android/gms/internal/ads/zzawk;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzawk;->zze(Lcom/google/android/gms/internal/ads/zzawk;J)V

    :cond_1
    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzawk;->zzf(Lcom/google/android/gms/internal/ads/zzawk;Z)V

    return-void
.end method
