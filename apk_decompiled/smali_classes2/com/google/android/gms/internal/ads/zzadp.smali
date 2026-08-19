.class public Lcom/google/android/gms/internal/ads/zzadp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaeb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaeb;

    return-void
.end method


# virtual methods
.method public zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzg(J)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeb;->zzg(J)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zza:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeb;->zzh()Z

    move-result v0

    return v0
.end method
