.class final Lcom/google/android/gms/internal/ads/zzchs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchv;

.field private zzb:Lcom/google/android/gms/internal/ads/zzeyp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzexs;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdaw;

.field private zze:Lcom/google/android/gms/internal/ads/zzcul;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdfv;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcnw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzciz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzexs;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzc:Lcom/google/android/gms/internal/ads/zzexs;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzeyp;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzb:Lcom/google/android/gms/internal/ads/zzeyp;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcnw;)Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcnw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzg:Lcom/google/android/gms/internal/ads/zzcnw;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdfv;)Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzf:Lcom/google/android/gms/internal/ads/zzdfv;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdaw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zzd:Lcom/google/android/gms/internal/ads/zzdaw;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcul;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchs;->zze:Lcom/google/android/gms/internal/ads/zzcul;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdga;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzd:Lcom/google/android/gms/internal/ads/zzdaw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdaw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchs;->zze:Lcom/google/android/gms/internal/ads/zzcul;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcul;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzf:Lcom/google/android/gms/internal/ads/zzdfv;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdfv;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzg:Lcom/google/android/gms/internal/ads/zzcnw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcnw;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcht;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzg:Lcom/google/android/gms/internal/ads/zzcnw;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzf:Lcom/google/android/gms/internal/ads/zzdfv;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcrm;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfcu;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfcu;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzctn;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzctn;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdrt;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzd:Lcom/google/android/gms/internal/ads/zzdaw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzchs;->zze:Lcom/google/android/gms/internal/ads/zzcul;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zza()Lcom/google/android/gms/internal/ads/zzegd;

    move-result-object v13

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzb:Lcom/google/android/gms/internal/ads/zzeyp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzchs;->zzc:Lcom/google/android/gms/internal/ads/zzexs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzchs;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    const/4 v14, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    .line 5
    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzcht;-><init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzdfv;Lcom/google/android/gms/internal/ads/zzcrm;Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzctn;Lcom/google/android/gms/internal/ads/zzdrt;Lcom/google/android/gms/internal/ads/zzdaw;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzegd;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzeyp;Lcom/google/android/gms/internal/ads/zzexs;)V

    return-object v1
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchs;->zzg()Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object v0

    return-object v0
.end method
