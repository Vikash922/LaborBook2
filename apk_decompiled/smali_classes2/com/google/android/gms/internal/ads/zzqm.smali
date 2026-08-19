.class public final synthetic Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/media/AudioTrack;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzqc;

.field public final synthetic zzc:Landroid/os/Handler;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzpz;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqc;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Lcom/google/android/gms/internal/ads/zzqc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:Lcom/google/android/gms/internal/ads/zzqc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzrf;->zzI(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqc;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpz;)V

    return-void
.end method
