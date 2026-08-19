.class public final Lcom/google/android/gms/internal/ads/zzewu;
.super Lcom/google/android/gms/internal/ads/zzewc;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgl;Lcom/google/android/gms/internal/ads/zzeyl;Lcom/google/android/gms/internal/ads/zzews;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/ads/zzewc;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgl;Lcom/google/android/gms/internal/ads/zzeyl;Lcom/google/android/gms/internal/ads/zzews;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzewu;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzc()Lcom/google/android/gms/internal/ads/zzcnm;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcnm;->zzd(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/internal/ads/zzcnm;

    .line 3
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzcnm;->zzc(Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzcnm;

    return-object p1
.end method
