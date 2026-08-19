.class final Lcom/google/android/gms/internal/ads/zzfjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->zza:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjf;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfjf;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfjf;->zzc()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->zza:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zzdx;)D

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjf;->zzc()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zzdx;)D

    move-result-wide v0

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjf;->zzb()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfjf;->zzb()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
