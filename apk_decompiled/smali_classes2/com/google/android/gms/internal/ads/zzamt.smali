.class public final Lcom/google/android/gms/internal/ads/zzamt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzej;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzek;

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzh:D

.field private zzi:D

.field private zzj:Z

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:I

.field private zzp:I

.field private final zzq:Lcom/google/android/gms/internal/ads/zzamu;

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zze:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzej;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzq:Lcom/google/android/gms/internal/ads/zzamu;

    const p1, -0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzr:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzs:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzu:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzk:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzn:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzi:D

    return-void
.end method

.method private static final zzf(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzek;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v3

    .line 2
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zze:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/4 v3, 0x2

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzq:Lcom/google/android/gms/internal/ads/zzamu;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamu;->zza:I

    const/16 v5, 0x11

    if-eq v4, v1, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    .line 7
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzamt;->zzf(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzek;Z)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzamu;->zzc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzo:I

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 9
    invoke-interface {v6, p1, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzo:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzo:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamu;->zzc:I

    if-ne v6, v4, :cond_0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamu;->zza:I

    if-ne v4, v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    .line 10
    array-length v4, v2

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamx;->zza(Lcom/google/android/gms/internal/ads/zzej;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzamv;->zzb:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzr:I

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzamv;->zzc:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzs:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzu:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzamu;->zzb:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzu:J

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzamv;->zza:I

    const/4 v3, -0x1

    const-string v4, "mhm1"

    if-eq v0, v3, :cond_3

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ".%02X"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzamv;->zzd:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeu;->zzc:[B

    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 15
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzf:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zza:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v3, "audio/mhm1"

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzr:I

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 23
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzv:Z

    goto :goto_3

    :cond_6
    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v0

    .line 24
    array-length v5, v0

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    const/16 v0, 0xd

    .line 27
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v2

    :cond_7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzt:I

    goto :goto_3

    :cond_8
    if-ne v4, v3, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzv:Z

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzk:Z

    move v6, v1

    goto :goto_1

    :cond_9
    move v6, v2

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzs:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzt:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzr:I

    int-to-double v3, v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    .line 28
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzj:Z

    if-eqz v5, :cond_a

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzj:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzi:D

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    goto :goto_2

    :cond_a
    int-to-double v9, v0

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    div-double/2addr v9, v3

    .line 29
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    add-double/2addr v3, v9

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    .line 28
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzp:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v4, v7

    move v7, v0

    move v8, v9

    move-object v9, v10

    .line 29
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzv:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzt:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzp:I

    .line 23
    :cond_b
    :goto_3
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zze:I

    goto/16 :goto_0

    .line 6
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    .line 30
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzamt;->zzf(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzek;Z)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v6

    .line 32
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzk([BI)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzq:Lcom/google/android/gms/internal/ads/zzamu;

    .line 33
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzamx;->zzb(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzamu;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzo:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzp:I

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzamu;->zzc:I

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzp:I

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v4

    .line 36
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 37
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzamu;->zzc:I

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzn:Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zze:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v3

    add-int/2addr v3, v1

    .line 34
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    :cond_e
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzn:Z

    goto/16 :goto_0

    .line 29
    :cond_f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzl:I

    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    goto/16 :goto_0

    :cond_10
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    .line 4
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzm:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzm:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v3

    or-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzm:I

    const v3, 0xffffff

    and-int/2addr v0, v3

    const v3, 0xc001a5

    if-ne v0, v3, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzm:I

    :cond_12
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zze:I

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzl:I

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzk:Z

    if-nez p3, :cond_1

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzp:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzn:Z

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzj:Z

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzj:Z

    long-to-double p1, p1

    if-eqz p3, :cond_2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzi:D

    return-void

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    :cond_3
    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzp:I

    const v1, -0x7fffffff

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzr:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzt:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzu:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzj:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzk:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzh:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzi:D

    return-void
.end method
