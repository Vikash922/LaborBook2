.class final Lcom/google/android/gms/internal/ads/zzdxj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcya;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbxw;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Lcom/google/android/gms/internal/ads/zzbxw;

    return-void
.end method


# virtual methods
.method public final zzdl(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    return-void
.end method

.method public final zzdm(Lcom/google/android/gms/internal/ads/zzfbg;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfax;->zze:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Lcom/google/android/gms/internal/ads/zzbxw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zza:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbxw;->zzm(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbxw;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
