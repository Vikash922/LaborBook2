.class final Lcom/google/android/gms/internal/ads/zzcij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsh;


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzchv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzc:Lcom/google/android/gms/internal/ads/zzchv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzd:Lcom/google/android/gms/internal/ads/zzcil;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcij;->zza:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdsr;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzd:Lcom/google/android/gms/internal/ads/zzcil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcij;->zza:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Lcom/google/android/gms/internal/ads/zzcil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzc()Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzc:Lcom/google/android/gms/internal/ads/zzchv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzb:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdss;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsk;Lcom/google/android/gms/internal/ads/zzcgl;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdsv;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzd:Lcom/google/android/gms/internal/ads/zzcil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcij;->zza:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Lcom/google/android/gms/internal/ads/zzcil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzc()Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzc:Lcom/google/android/gms/internal/ads/zzchv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcij;->zzb:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsk;Lcom/google/android/gms/internal/ads/zzcgl;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    return-object v0
.end method
