.class final Lcom/google/android/gms/internal/ads/zzcil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsp;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbki;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzchv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbki;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzh:Lcom/google/android/gms/internal/ads/zzcil;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzg:Lcom/google/android/gms/internal/ads/zzchv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zze:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzf:Lcom/google/android/gms/internal/ads/zzbki;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdsl;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdsn;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdsn;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcil;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zze:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzdsg;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcii;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzg:Lcom/google/android/gms/internal/ads/zzchv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzh:Lcom/google/android/gms/internal/ads/zzcil;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcii;-><init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/internal/ads/zzciz;)V

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzdsk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzf:Lcom/google/android/gms/internal/ads/zzbki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsl;->zzc(Lcom/google/android/gms/internal/ads/zzbki;)Lcom/google/android/gms/internal/ads/zzdsk;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdsm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcil;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsm;

    return-object v0
.end method
