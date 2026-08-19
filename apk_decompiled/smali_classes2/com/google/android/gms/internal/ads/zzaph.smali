.class final Lcom/google/android/gms/internal/ads/zzaph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzapj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapj;Ljava/lang/String;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaph;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzc:Lcom/google/android/gms/internal/ads/zzapj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzc:Lcom/google/android/gms/internal/ads/zzapj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzi(Lcom/google/android/gms/internal/ads/zzapj;)Lcom/google/android/gms/internal/ads/zzapu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaph;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaph;->zzb:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzapu;->zza(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzi(Lcom/google/android/gms/internal/ads/zzapj;)Lcom/google/android/gms/internal/ads/zzapu;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzb(Ljava/lang/String;)V

    return-void
.end method
