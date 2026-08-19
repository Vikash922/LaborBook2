.class public final Lcom/google/android/gms/internal/ads/zzaxi;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzawi;

.field private zzi:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;IILcom/google/android/gms/internal/ads/zzawi;)V
    .locals 7

    .line 1
    const-string v3, "ndx9dZsZ7ieWidA9GZ0gFhILFKdyE8GGkCplaI9mVx4="

    const/16 v6, 0x35

    const-string v2, "qIGT98ofDONSt/ESILoFz6FgHDBS/gwI/iVoXkVW/e+gYU6fjAWtMRBwwAhwGXlz"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzh:Lcom/google/android/gms/internal/ads/zzawi;

    if-eqz p7, :cond_0

    .line 2
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzawi;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzi:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzh:Lcom/google/android/gms/internal/ads/zzawi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zze:Ljava/lang/reflect/Method;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzN(J)Lcom/google/android/gms/internal/ads/zzarz;

    :cond_0
    return-void
.end method
