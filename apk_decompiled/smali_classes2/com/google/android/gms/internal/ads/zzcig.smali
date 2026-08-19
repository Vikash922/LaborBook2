.class public final Lcom/google/android/gms/internal/ads/zzcig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcgo;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcja;

.field private zzc:Lcom/google/android/gms/internal/ads/zzffx;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcjn;

.field private zze:Lcom/google/android/gms/internal/ads/zzfcr;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzciz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcgl;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zza:Lcom/google/android/gms/internal/ads/zzcgo;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcgo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzb:Lcom/google/android/gms/internal/ads/zzcja;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcja;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Lcom/google/android/gms/internal/ads/zzffx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Lcom/google/android/gms/internal/ads/zzffx;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzd:Lcom/google/android/gms/internal/ads/zzcjn;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcjn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzd:Lcom/google/android/gms/internal/ads/zzcjn;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzfcr;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzfcr;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zza:Lcom/google/android/gms/internal/ads/zzcgo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzb:Lcom/google/android/gms/internal/ads/zzcja;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzc:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzd:Lcom/google/android/gms/internal/ads/zzcjn;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcig;->zze:Lcom/google/android/gms/internal/ads/zzfcr;

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzchv;-><init>(Lcom/google/android/gms/internal/ads/zzcgo;Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzcjn;Lcom/google/android/gms/internal/ads/zzfcr;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcgo;)Lcom/google/android/gms/internal/ads/zzcig;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zza:Lcom/google/android/gms/internal/ads/zzcgo;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcja;)Lcom/google/android/gms/internal/ads/zzcig;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcja;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzb:Lcom/google/android/gms/internal/ads/zzcja;

    return-object p0
.end method
