.class public final Lcom/google/android/gms/internal/ads/zzafv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadf;


# instance fields
.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzadf;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzadf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzb:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Lcom/google/android/gms/internal/ads/zzadf;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzafv;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzb:J

    return-wide v0
.end method


# virtual methods
.method public final zzG()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafu;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzafu;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzaeb;Lcom/google/android/gms/internal/ads/zzaeb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    return-void
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    return-object p1
.end method
