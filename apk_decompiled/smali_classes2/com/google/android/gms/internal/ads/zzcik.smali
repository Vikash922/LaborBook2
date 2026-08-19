.class final Lcom/google/android/gms/internal/ads/zzcik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdso;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchv;

.field private zzb:Landroid/content/Context;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbki;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzciz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzbki;)Lcom/google/android/gms/internal/ads/zzdso;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbki;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzc:Lcom/google/android/gms/internal/ads/zzbki;

    return-object p0
.end method

.method public final bridge synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdso;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdsp;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzc:Lcom/google/android/gms/internal/ads/zzbki;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbki;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzc:Lcom/google/android/gms/internal/ads/zzbki;

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcil;-><init>(Lcom/google/android/gms/internal/ads/zzchv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbki;)V

    return-object v0
.end method
