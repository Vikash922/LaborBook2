.class public final synthetic Lcom/google/android/gms/internal/ads/zzpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpx;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpo;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpo;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpx;->zze(Lcom/google/android/gms/internal/ads/zzpx;IJJ)V

    return-void
.end method
