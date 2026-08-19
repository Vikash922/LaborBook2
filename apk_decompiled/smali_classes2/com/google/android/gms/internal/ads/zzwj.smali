.class public final Lcom/google/android/gms/internal/ads/zzwj;
.super Lcom/google/android/gms/internal/ads/zztx;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwa;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzry;

.field private final zzc:I

.field private zzd:Z

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzhe;

.field private zzi:Lcom/google/android/gms/internal/ads/zzap;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzwg;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzzi;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzzi;IILcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:Lcom/google/android/gms/internal/ads/zzap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzj:Lcom/google/android/gms/internal/ads/zzwg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzb:Lcom/google/android/gms/internal/ads/zzry;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:Lcom/google/android/gms/internal/ads/zzzi;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:J

    return-void
.end method

.method private final zzw()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzww;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzwj;->zze:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzwj;->zzf:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzJ()Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v14

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzap;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v2

    move-wide v4, v2

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    .line 3
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzww;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzaj;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:Z

    if-eqz v1, :cond_1

    .line 4
    new-instance v10, Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzbl;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    .line 5
    :goto_1
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zztx;->zzo(Lcom/google/android/gms/internal/ads/zzbl;)V

    return-void
.end method


# virtual methods
.method public final zzG(Lcom/google/android/gms/internal/ads/zzuw;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwe;->zzO()V

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzze;J)Lcom/google/android/gms/internal/ads/zzuw;
    .locals 18

    move-object/from16 v9, p0

    .line 1
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zza()Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v2

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzge;->zzf(Lcom/google/android/gms/internal/ads/zzhe;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzJ()Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzak;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzak;->zza:Landroid/net/Uri;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzwj;->zzj:Lcom/google/android/gms/internal/ads/zzwg;

    .line 4
    new-instance v17, Lcom/google/android/gms/internal/ads/zzwe;

    move-object/from16 v0, v17

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztx;->zzb()Lcom/google/android/gms/internal/ads/zzoz;

    .line 6
    sget v3, Lcom/google/android/gms/internal/ads/zzwh;->zza:I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzua;

    move-object v3, v5

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzua;-><init>(Lcom/google/android/gms/internal/ads/zzadh;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzwj;->zzb:Lcom/google/android/gms/internal/ads/zzry;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zztx;->zzc(Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzrt;

    move-result-object v5

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzwj;->zzk:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zztx;->zze(Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v7

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzwj;->zzc:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 8
    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzrt;Lcom/google/android/gms/internal/ads/zzzi;Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzwa;Lcom/google/android/gms/internal/ads/zzze;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzz;JLcom/google/android/gms/internal/ads/zzaaa;)V

    return-object v17
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:Lcom/google/android/gms/internal/ads/zzap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(JLcom/google/android/gms/internal/ads/zzaeb;Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:J

    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaeb;->zzh()Z

    move-result p3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzf:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzf:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzw()V

    return-void
.end method

.method protected final zzn(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzhe;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztx;->zzb()Lcom/google/android/gms/internal/ads/zzoz;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzw()V

    return-void
.end method

.method protected final zzq()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:Lcom/google/android/gms/internal/ads/zzap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
