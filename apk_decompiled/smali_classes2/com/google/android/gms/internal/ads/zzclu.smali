.class public final synthetic Lcom/google/android/gms/internal/ads/zzclu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzclw;

.field public final synthetic zzb:Ljava/lang/Throwable;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfio;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Lcom/google/android/gms/ads/internal/util/client/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzclw;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclu;->zza:Lcom/google/android/gms/internal/ads/zzclw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzb:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzc:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzclu;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkt:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclu;->zza:Lcom/google/android/gms/internal/ads/zzclw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzb:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zza(Lcom/google/android/gms/internal/ads/zzclx;)Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbtv;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbtx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzclx;->zzb:Lcom/google/android/gms/internal/ads/zzbtx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzclx;->zzb:Lcom/google/android/gms/internal/ads/zzbtx;

    const-string v1, "AttributionReporting.registerSourceAndPingClickUrl"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbtx;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zza(Lcom/google/android/gms/internal/ads/zzclx;)Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbtv;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbtx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzclx;->zza:Lcom/google/android/gms/internal/ads/zzbtx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzclx;->zza:Lcom/google/android/gms/internal/ads/zzbtx;

    const-string v1, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbtx;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclu;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclu;->zzc:Lcom/google/android/gms/internal/ads/zzfio;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzfio;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcxm;)V

    return-void
.end method
