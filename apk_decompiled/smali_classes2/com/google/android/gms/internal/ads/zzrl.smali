.class public final Lcom/google/android/gms/internal/ads/zzrl;
.super Lcom/google/android/gms/internal/ads/zztg;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkv;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzss;

.field private zzf:I

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzz;

.field private zzj:Lcom/google/android/gms/internal/ads/zzz;

.field private zzk:J

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzti;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzqf;)V
    .locals 8

    .line 1
    sget p4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x23

    const/4 v1, 0x0

    if-lt p4, v0, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/ads/zzss;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsr;->zza:Lcom/google/android/gms/internal/ads/zzsr;

    .line 2
    invoke-direct {p4, v0}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Lcom/google/android/gms/internal/ads/zzsr;)V

    goto :goto_0

    :cond_0
    move-object p4, v1

    :goto_0
    const/4 v6, 0x0

    const v7, 0x472c4400    # 44100.0f

    const/4 v3, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zztg;-><init>(ILcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzti;ZF)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzb:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzrl;->zze:Lcom/google/android/gms/internal/ads/zzss;

    const/16 p1, -0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzo:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpx;

    .line 5
    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrj;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzrj;-><init>(Lcom/google/android/gms/internal/ads/zzrl;Lcom/google/android/gms/internal/ads/zzrk;)V

    .line 6
    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzq(Lcom/google/android/gms/internal/ads/zzqc;)V

    return-void
.end method

.method private final zzaR(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzN(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzp:I

    return p1
.end method

.method private static zzaS(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZLcom/google/android/gms/internal/ads/zzqf;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztt;->zza()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zztt;->zze(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzaT()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzW()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqf;->zzb(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzk:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzk:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzl:Z

    :cond_1
    return-void
.end method

.method static synthetic zzad(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzlt;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzay()Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzae(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzpx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    return-object p0
.end method

.method static bridge synthetic zzah(Lcom/google/android/gms/internal/ads/zzrl;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzn:Z

    return-void
.end method

.method static synthetic zzai(Lcom/google/android/gms/internal/ads/zzrl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzB()V

    return-void
.end method


# virtual methods
.method protected final zzA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzk()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zze:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzb()V

    :cond_0
    return-void
.end method

.method protected final zzC()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzn:Z

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzm:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzm:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzl()V

    .line 3
    :goto_0
    throw v1
.end method

.method protected final zzD()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzi()V

    return-void
.end method

.method protected final zzE()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrl;->zzaT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzh()V

    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final zzW()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzX()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzX()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F
    .locals 3

    const/4 p2, 0x0

    const/4 v0, -0x1

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_1

    aget-object v2, p3, p2

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-eq v2, v0, :cond_0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v1

    mul-float/2addr p2, p1

    return p2
.end method

.method public final zza()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzcT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrl;->zzaT()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzk:J

    return-wide v0
.end method

.method protected final zzaa(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x80

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzL:I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrl;->zzaQ(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztt;->zza()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 5
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzpk;

    move-result-object v6

    .line 6
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzpk;->zzb:Z

    if-nez v7, :cond_2

    move v7, v4

    goto :goto_1

    .line 7
    :cond_2
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Z

    if-eq v5, v7, :cond_3

    const/16 v7, 0x200

    goto :goto_0

    :cond_3
    const/16 v7, 0x600

    .line 8
    :goto_0
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Z

    if-eqz v6, :cond_4

    or-int/lit16 v7, v7, 0x800

    .line 9
    :cond_4
    :goto_1
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    or-int/lit16 p1, v7, 0xac

    return p1

    :cond_6
    move v7, v4

    :goto_2
    const-string v1, "audio/raw"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 11
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    iget v6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    const/4 v8, 0x2

    .line 12
    invoke-static {v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzA(III)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqf;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-static {p1, p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzaS(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZLcom/google/android/gms/internal/ads/zzqf;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    if-nez v3, :cond_a

    move v5, v8

    :goto_3
    or-int/lit16 p1, v5, 0x80

    return p1

    .line 15
    :cond_a
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1

    if-nez v1, :cond_c

    move v3, v5

    .line 17
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 18
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzsz;

    .line 19
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v8

    if-eqz v8, :cond_b

    move p1, v4

    move v1, v5

    move-object v0, v6

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move p1, v5

    :goto_5
    if-eq v5, v1, :cond_d

    const/4 v3, 0x3

    goto :goto_6

    :cond_d
    const/4 v3, 0x4

    :goto_6
    const/16 v6, 0x8

    if-eqz v1, :cond_e

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 v6, 0x10

    .line 21
    :cond_e
    iget-boolean p2, v0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:Z

    if-eq v5, p2, :cond_f

    move p2, v4

    goto :goto_7

    :cond_f
    const/16 p2, 0x40

    :goto_7
    if-eq v5, p1, :cond_10

    move v2, v4

    :cond_10
    or-int p1, v3, v6

    or-int/lit8 p1, p1, 0x20

    or-int/2addr p1, p2

    or-int/2addr p1, v2

    or-int/2addr p1, v7

    return p1
.end method

.method protected final zzab(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhz;->zze:I

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zztg;->zzaM(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzrl;->zzaR(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzf:I

    if-le v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v7, v1

    move v6, v2

    goto :goto_0

    .line 4
    :cond_2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:I

    move v6, v0

    move v7, v2

    :goto_0
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object p1
.end method

.method protected final zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    .line 3
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzu(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V

    return-object p1
.end method

.method protected final zzaf(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzst;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzT()[Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p3

    array-length v0, p3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrl;->zzaR(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    aget-object v5, p3, v4

    .line 4
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzhz;->zzd:I

    if-eqz v6, :cond_1

    .line 5
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzrl;->zzaR(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzf:I

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    .line 6
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v4, "OMX.SEC.aac.dec"

    .line 7
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "samsung"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "zeroflte"

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "herolte"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "heroqlte"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzg:Z

    const-string v4, "OMX.google.opus.decoder"

    .line 12
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "c2.android.opus.decoder"

    .line 13
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "OMX.google.vorbis.decoder"

    .line 14
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "c2.android.vorbis.decoder"

    .line 15
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move p3, v2

    goto :goto_4

    :cond_6
    :goto_3
    move p3, v3

    :goto_4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzh:Z

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzf:I

    .line 16
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    .line 17
    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    const-string v6, "channel-count"

    .line 18
    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    const-string v7, "sample-rate"

    .line 19
    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 20
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v7, "max-input-size"

    .line 21
    invoke-static {v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v4, "priority"

    .line 22
    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_8

    const/16 v4, 0x17

    if-ne v0, v4, :cond_7

    const-string v0, "ZTE B2017G"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "AXON 7 mini"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "operating-rate"

    .line 24
    invoke-virtual {v5, v0, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    sget p4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x1c

    if-gt p4, v0, :cond_9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v4, "audio/ac4"

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ac4-is-sync"

    .line 26
    invoke-virtual {v5, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    if-lt p4, v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    const/4 v1, 0x4

    .line 27
    invoke-static {v1, p3, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzA(III)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p3

    .line 28
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_a

    const-string p3, "pcm-encoding"

    .line 29
    invoke-virtual {v5, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/16 p3, 0x20

    if-lt p4, p3, :cond_b

    const-string p3, "max-output-channel-count"

    const/16 v0, 0x63

    .line 30
    invoke-virtual {v5, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/16 p3, 0x23

    if-lt p4, p3, :cond_c

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzo:I

    neg-int p3, p3

    .line 31
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const-string p4, "importance"

    invoke-virtual {v5, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    .line 32
    const-string p4, "audio/raw"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 33
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    move-object p3, p2

    goto :goto_5

    :cond_d
    move-object p3, v0

    :goto_5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zze:Lcom/google/android/gms/internal/ads/zzss;

    invoke-static {p1, v5, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzst;->zza(Lcom/google/android/gms/internal/ads/zzsz;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzst;

    move-result-object p1

    return-object p1
.end method

.method protected final zzag(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzaS(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZLcom/google/android/gms/internal/ads/zzqf;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zztt;->zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final zzaj(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v1, "audio/opus"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhn;->zzf:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v0, v3

    long-to-int v0, v0

    .line 7
    invoke-interface {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzr(II)V

    :cond_0
    return-void
.end method

.method protected final zzak(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzm(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzst;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpx;->zzq(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzam(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzr(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_4

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 31
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    goto :goto_0

    .line 3
    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzn(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v4

    .line 2
    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 7
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 8
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 9
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 10
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzI(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    .line 11
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    .line 12
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzm:Ljava/lang/Object;

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zza:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzc:Ljava/util/List;

    .line 16
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzR(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    .line 18
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    .line 19
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    const-string v0, "channel-count"

    .line 20
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    const-string v0, "sample-rate"

    .line 21
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzg:Z

    const/4 v3, 0x6

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-ne v0, v3, :cond_5

    .line 23
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-ge p1, v3, :cond_5

    .line 24
    new-array v1, p1, [I

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_b

    .line 25
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzh:Z

    if-eqz p1, :cond_b

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    const/4 v0, 0x3

    const/4 v5, 0x1

    if-eq p1, v0, :cond_a

    const/4 v6, 0x4

    const/4 v7, 0x5

    if-eq p1, v7, :cond_9

    if-eq p1, v3, :cond_8

    const/4 v8, 0x7

    if-eq p1, v8, :cond_7

    const/16 v9, 0x8

    if-eq p1, v9, :cond_6

    goto :goto_3

    :cond_6
    new-array p1, v9, [I

    aput v2, p1, v2

    aput v4, p1, v5

    aput v5, p1, v4

    aput v8, p1, v0

    aput v7, p1, v6

    aput v3, p1, v7

    aput v0, p1, v3

    aput v6, p1, v8

    goto :goto_2

    :cond_7
    new-array p1, v8, [I

    aput v2, p1, v2

    aput v4, p1, v5

    aput v5, p1, v4

    aput v3, p1, v0

    aput v7, p1, v6

    aput v0, p1, v7

    aput v6, p1, v3

    goto :goto_2

    :cond_8
    new-array p1, v3, [I

    aput v2, p1, v2

    aput v4, p1, v5

    aput v5, p1, v4

    aput v7, p1, v0

    aput v0, p1, v6

    aput v6, p1, v7

    goto :goto_2

    :cond_9
    new-array p1, v7, [I

    aput v2, p1, v2

    aput v4, p1, v5

    aput v5, p1, v4

    aput v0, p1, v0

    aput v6, p1, v6

    goto :goto_2

    :cond_a
    new-array p1, v0, [I

    aput v2, p1, v2

    aput v4, p1, v5

    aput v5, p1, v4

    :goto_2
    move-object v1, p1

    :cond_b
    :goto_3
    move-object p1, p2

    .line 26
    :goto_4
    :try_start_0
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaL()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Lcom/google/android/gms/internal/ads/zzly;

    :cond_c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 28
    invoke-interface {p2, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzqf;->zze(Lcom/google/android/gms/internal/ads/zzz;I[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqa; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzqa;->zza:Lcom/google/android/gms/internal/ads/zzz;

    const/16 v0, 0x1389

    .line 29
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    .line 30
    throw p1
.end method

.method protected final zzao()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzl:Z

    return-void
.end method

.method protected final zzap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzg()V

    return-void
.end method

.method protected final zzaq()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzj()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaL()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x138a

    goto :goto_0

    :cond_0
    const/16 v1, 0x138b

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    .line 2
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v0

    throw v0
.end method

.method protected final zzar(JJLcom/google/android/gms/internal/ads/zzsw;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 13
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object p1, p5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 1
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzhy;->zzf:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzhy;->zzf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzg()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 4
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/zzqf;->zzx(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 9
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 10
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzhy;->zze:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzhy;->zze:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaL()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Lcom/google/android/gms/internal/ads/zzly;

    .line 8
    :goto_0
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    const/16 p3, 0x138a

    .line 6
    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaL()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Lcom/google/android/gms/internal/ads/zzly;

    :cond_6
    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Z

    const/16 p4, 0x1389

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    throw p1
.end method

.method protected final zzas(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Lcom/google/android/gms/internal/ads/zzly;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzs(Lcom/google/android/gms/internal/ads/zzbb;)V

    return-void
.end method

.method public final zzj()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzn:Z

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzkv;
    .locals 0

    return-object p0
.end method

.method public final zzu(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    const/16 v1, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztg;->zzu(ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzn(I)V

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-lt p2, v1, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zze:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzd(I)V

    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzv(Z)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzo:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-lt p2, v1, :cond_3

    new-instance p2, Landroid/os/Bundle;

    .line 8
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzo:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzsw;->zzq(Landroid/os/Bundle;)V

    :cond_3
    return-void

    .line 12
    :cond_4
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 13
    check-cast p2, Landroid/media/AudioDeviceInfo;

    .line 14
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzu(Landroid/media/AudioDeviceInfo;)V

    return-void

    .line 17
    :cond_5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzf;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzo(Lcom/google/android/gms/internal/ads/zzf;)V

    return-void

    .line 20
    :cond_6
    check-cast p2, Lcom/google/android/gms/internal/ads/zze;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zze;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzm(Lcom/google/android/gms/internal/ads/zze;)V

    return-void

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzw(F)V

    return-void
.end method

.method protected final zzx()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzm:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzi:Lcom/google/android/gms/internal/ads/zzz;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpx;->zzs(Lcom/google/android/gms/internal/ads/zzhy;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 2
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzx()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpx;->zzs(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 4
    throw v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpx;->zzs(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 5
    throw v0
.end method

.method protected final zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztg;->zzy(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzc:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrl;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpx;->zzt(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Lcom/google/android/gms/internal/ads/zzly;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzo()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzt(Lcom/google/android/gms/internal/ads/zzoz;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zzp(Lcom/google/android/gms/internal/ads/zzdg;)V

    return-void
.end method

.method protected final zzz(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztg;->zzz(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzd:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzqf;->zzf()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzk:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzn:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrl;->zzl:Z

    return-void
.end method
