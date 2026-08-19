.class public final Lcom/google/android/gms/internal/ads/zzajs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfww;

.field public final zzb:J

.field public final zzc:J


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    return-void
.end method
