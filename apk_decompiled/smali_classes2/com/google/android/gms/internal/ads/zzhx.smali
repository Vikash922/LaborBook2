.class public abstract Lcom/google/android/gms/internal/ads/zzhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlu;
.implements Lcom/google/android/gms/internal/ads/zzlx;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzkp;

.field private zzd:Lcom/google/android/gms/internal/ads/zzly;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzoz;

.field private zzg:Lcom/google/android/gms/internal/ads/zzdg;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzws;

.field private zzj:[Lcom/google/android/gms/internal/ads/zzz;

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzbl;

.field private zzq:Lcom/google/android/gms/internal/ads/zzuy;

.field private zzr:Lcom/google/android/gms/internal/ads/zzlw;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zza:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzb:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzkp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzc:Lcom/google/android/gms/internal/ads/zzkp;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    return-void
.end method

.method private final zzZ(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhx;->zzz(JZ)V

    return-void
.end method


# virtual methods
.method protected zzA()V
    .locals 0

    return-void
.end method

.method protected final zzB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzr:Lcom/google/android/gms/internal/ads/zzlw;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzlw;->zza(Lcom/google/android/gms/internal/ads/zzlu;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected zzC()V
    .locals 0

    return-void
.end method

.method protected zzD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    return-void
.end method

.method protected zzE()V
    .locals 0

    return-void
.end method

.method protected zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzuy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    return-void
.end method

.method public final zzG()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzA()V

    return-void
.end method

.method public final zzH([Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzws;JJLcom/google/android/gms/internal/ads/zzuy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzq:Lcom/google/android/gms/internal/ads/zzuy;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzj:[Lcom/google/android/gms/internal/ads/zzz;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzk:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhx;->zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzuy;)V

    return-void
.end method

.method public final zzI()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzc:Lcom/google/android/gms/internal/ads/zzkp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzC()V

    return-void
.end method

.method public final zzJ(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzZ(JZ)V

    return-void
.end method

.method public final zzK()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    return-void
.end method

.method public final zzL(Lcom/google/android/gms/internal/ads/zzlw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzr:Lcom/google/android/gms/internal/ads/zzlw;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic zzM(FF)V
    .locals 0

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzbl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    :cond_0
    return-void
.end method

.method public final zzO()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzD()V

    return-void
.end method

.method public final zzP()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzE()V

    return-void
.end method

.method public final zzQ()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    return v0
.end method

.method protected final zzS()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzws;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzws;->zze()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected final zzT()[Lcom/google/android/gms/internal/ads/zzz;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzj:[Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast v0, [Lcom/google/android/gms/internal/ads/zzz;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzb:I

    return v0
.end method

.method public final zzcT()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    return v0
.end method

.method protected final zzcU(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzws;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzws;->zza(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzk:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object p3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzk:J

    add-long/2addr v1, v3

    .line 4
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzah(J)Lcom/google/android/gms/internal/ads/zzx;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    return p2

    :cond_3
    :goto_0
    return p3
.end method

.method public final zzcV()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzm:J

    return-wide v0
.end method

.method protected final zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;
    .locals 10

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzo:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzo:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzhx;->zzY(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzo:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzo:Z

    .line 2
    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzo:Z

    :cond_0
    :goto_0
    move v6, v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzU()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhx;->zze:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzq:Lcom/google/android/gms/internal/ads/zzuy;

    move-object v2, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    .line 4
    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzii;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzz;ILcom/google/android/gms/internal/ads/zzuy;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    return-object p1
.end method

.method protected final zzd(J)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzws;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzk:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzws;->zzb(J)I

    move-result p1

    return p1
.end method

.method public zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzl:J

    return-wide v0
.end method

.method protected final zzh()Lcom/google/android/gms/internal/ads/zzbl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    return-object v0
.end method

.method protected final zzi()Lcom/google/android/gms/internal/ads/zzdg;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzg:Lcom/google/android/gms/internal/ads/zzdg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdg;

    return-object v0
.end method

.method protected final zzk()Lcom/google/android/gms/internal/ads/zzkp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzc:Lcom/google/android/gms/internal/ads/zzkp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    return-object v0
.end method

.method public zzl()Lcom/google/android/gms/internal/ads/zzkv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzlx;
    .locals 0

    return-object p0
.end method

.method protected final zzn()Lcom/google/android/gms/internal/ads/zzly;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzd:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzly;

    return-object v0
.end method

.method protected final zzo()Lcom/google/android/gms/internal/ads/zzoz;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzf:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoz;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzws;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    return-object v0
.end method

.method public final zzq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zza:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzr:Lcom/google/android/gms/internal/ads/zzlw;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzr()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzc:Lcom/google/android/gms/internal/ads/zzkp;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzj:[Lcom/google/android/gms/internal/ads/zzz;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzn:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzx()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzq:Lcom/google/android/gms/internal/ads/zzuy;

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzly;[Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzws;JZZJJLcom/google/android/gms/internal/ads/zzuy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object v8, p0

    move/from16 v9, p6

    .line 1
    iget v0, v8, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    move-object v0, p1

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzhx;->zzd:Lcom/google/android/gms/internal/ads/zzly;

    move-object/from16 v7, p12

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzhx;->zzq:Lcom/google/android/gms/internal/ads/zzuy;

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzhx;->zzh:I

    move/from16 v0, p7

    .line 2
    invoke-virtual {p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzy(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhx;->zzH([Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzws;JJLcom/google/android/gms/internal/ads/zzuy;)V

    move-wide/from16 v0, p8

    .line 4
    invoke-direct {p0, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzhx;->zzZ(JZ)V

    return-void
.end method

.method public synthetic zzt()V
    .locals 0

    return-void
.end method

.method public zzu(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    return-void
.end method

.method public final zzv(ILcom/google/android/gms/internal/ads/zzoz;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zze:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzf:Lcom/google/android/gms/internal/ads/zzoz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzg:Lcom/google/android/gms/internal/ads/zzdg;

    return-void
.end method

.method public final zzw()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzi:Lcom/google/android/gms/internal/ads/zzws;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzws;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzws;->zzd()V

    return-void
.end method

.method protected zzx()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    return-void
.end method

.method protected zzz(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
