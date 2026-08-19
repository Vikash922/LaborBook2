.class public final synthetic Lcom/google/android/gms/internal/ads/zzccz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcbg;

.field public final synthetic zzb:Z

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcbg;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zza:Lcom/google/android/gms/internal/ads/zzcbg;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzcdb;->zzd:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccz;->zza:Lcom/google/android/gms/internal/ads/zzcbg;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzc:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcbg;->zzv(ZJ)V

    return-void
.end method
