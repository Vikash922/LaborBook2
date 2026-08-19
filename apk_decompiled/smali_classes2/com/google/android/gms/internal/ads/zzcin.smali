.class final Lcom/google/android/gms/internal/ads/zzcin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchv;

.field private zzb:Lcom/google/android/gms/internal/ads/zzeyp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzexs;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdaw;

.field private zze:Lcom/google/android/gms/internal/ads/zzcul;

.field private zzf:Lcom/google/android/gms/internal/ads/zzeia;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzciz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzexs;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzc:Lcom/google/android/gms/internal/ads/zzexs;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzeyp;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzb:Lcom/google/android/gms/internal/ads/zzeyp;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeia;)Lcom/google/android/gms/internal/ads/zzdfd;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeia;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzf:Lcom/google/android/gms/internal/ads/zzeia;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzdfd;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdaw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzd:Lcom/google/android/gms/internal/ads/zzdaw;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/internal/ads/zzdfd;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcul;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zze:Lcom/google/android/gms/internal/ads/zzcul;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzdfe;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzd:Lcom/google/android/gms/internal/ads/zzdaw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdaw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcin;->zze:Lcom/google/android/gms/internal/ads/zzcul;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcul;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzf:Lcom/google/android/gms/internal/ads/zzeia;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeia;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcio;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcrm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfcu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfcu;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzctn;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzctn;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdrt;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzd:Lcom/google/android/gms/internal/ads/zzdaw;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcin;->zze:Lcom/google/android/gms/internal/ads/zzcul;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zza()Lcom/google/android/gms/internal/ads/zzegd;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzf:Lcom/google/android/gms/internal/ads/zzeia;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzb:Lcom/google/android/gms/internal/ads/zzeyp;

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzc:Lcom/google/android/gms/internal/ads/zzexs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcin;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    const/4 v12, 0x0

    move-object v2, v0

    .line 4
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzcio;-><init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzcrm;Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzctn;Lcom/google/android/gms/internal/ads/zzdrt;Lcom/google/android/gms/internal/ads/zzdaw;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzegd;Lcom/google/android/gms/internal/ads/zzeia;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzeyp;Lcom/google/android/gms/internal/ads/zzexs;)V

    return-object v0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcin;->zzf()Lcom/google/android/gms/internal/ads/zzdfe;

    move-result-object v0

    return-object v0
.end method
