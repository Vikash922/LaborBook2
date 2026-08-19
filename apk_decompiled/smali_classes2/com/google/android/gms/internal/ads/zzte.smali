.class final Lcom/google/android/gms/internal/ads/zzte;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzte;


# instance fields
.field public final zzb:J

.field public final zzc:J

.field public final zzd:J

.field public final zze:Lcom/google/android/gms/internal/ads/zzeq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzte;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v7

    move-wide v1, v5

    move-wide v3, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzte;-><init>(JJJ)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzte;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzb:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzd:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeq;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeq;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzeq;

    return-void
.end method
