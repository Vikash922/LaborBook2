.class public final Lcom/google/android/gms/internal/ads/zzaml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzanx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzamj;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzamy;

.field private zzg:Lcom/google/android/gms/internal/ads/zzamk;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaml;->zza:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzb:Lcom/google/android/gms/internal/ads/zzanx;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzd:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamj;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzamj;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamy;

    const/16 v0, 0xb2

    .line 2
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzamy;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:J

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzd:[Z

    .line 5
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzamj;

    .line 74
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamj;->zza([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    .line 75
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamk;->zza([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzamy;

    .line 76
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 6
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    if-nez v9, :cond_d

    if-lez v8, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzamj;

    .line 7
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzamj;->zza([BII)V

    :cond_2
    if-gez v8, :cond_3

    neg-int v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzamj;

    .line 8
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzamj;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzamj;->zzb:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:Ljava/lang/String;

    .line 77
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzamj;->zzc:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzamj;->zza:I

    .line 10
    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzej;

    .line 11
    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 12
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    const/4 v10, 0x4

    .line 13
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    const/16 v13, 0x8

    .line 15
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_4

    .line 17
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 18
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 19
    :cond_4
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    const/16 v6, 0xf

    if-ne v10, v6, :cond_6

    const/16 v6, 0x8

    .line 20
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    .line 21
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v6

    if-nez v6, :cond_5

    .line 22
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    int-to-float v10, v10

    int-to-float v6, v6

    div-float v16, v10, v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x7

    if-ge v10, v6, :cond_7

    .line 47
    sget-object v6, Lcom/google/android/gms/internal/ads/zzaml;->zza:[F

    .line 23
    aget v16, v6, v10

    goto :goto_2

    .line 24
    :cond_7
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move/from16 v6, v16

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_8

    .line 26
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    const/4 v10, 0x1

    .line 27
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 28
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0xf

    .line 29
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 30
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 31
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 32
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 33
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 34
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    const/4 v11, 0x3

    .line 35
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    const/16 v11, 0xb

    .line 36
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 37
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 38
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    const/4 v10, 0x2

    goto :goto_3

    :cond_8
    move v10, v11

    .line 40
    :goto_3
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "Unhandled video object layer shape"

    .line 41
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    const/16 v10, 0x10

    .line 43
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    .line 44
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 45
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v10, :cond_a

    const-string v10, "Invalid vop_increment_time_resolution"

    .line 46
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_4
    if-lez v10, :cond_b

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 47
    :cond_b
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 48
    :cond_c
    :goto_5
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    const/16 v10, 0xd

    .line 49
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v11

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 51
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    .line 52
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 53
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzx;

    .line 54
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 55
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v14, "video/mp2t"

    .line 56
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v14, "video/mp4v-es"

    .line 57
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 58
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 59
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 60
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 61
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 62
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v6

    .line 63
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    :cond_d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    .line 64
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzamk;->zza([BII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzamy;

    if-lez v8, :cond_e

    .line 65
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    const/4 v10, 0x0

    goto :goto_6

    :cond_e
    neg-int v10, v8

    .line 66
    :goto_6
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    .line 67
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzfq;->zzc([BI)I

    move-result v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    .line 68
    sget v9, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzek;

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzb:Lcom/google/android/gms/internal/ads/zzanx;

    .line 69
    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzanx;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    invoke-virtual {v1, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzanx;->zza(JLcom/google/android/gms/internal/ads/zzek;)V

    :cond_f
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v5

    add-int/lit8 v8, v4, 0x2

    .line 70
    aget-byte v5, v5, v8

    const/4 v8, 0x1

    if-ne v5, v8, :cond_10

    .line 71
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(I)V

    :cond_10
    move v5, v1

    :cond_11
    sub-int v1, v2, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    .line 72
    invoke-virtual {v4, v8, v9, v1, v6}, Lcom/google/android/gms/internal/ads/zzamk;->zzb(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    .line 73
    invoke-virtual {v1, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzamk;->zzc(IJ)V

    move-object/from16 v6, p1

    move v1, v7

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamk;-><init>(Lcom/google/android/gms/internal/ads/zzaei;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzb:Lcom/google/android/gms/internal/ads/zzanx;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    .line 2
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamk;->zzb(JIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamk;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzd:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzi([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzamj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamj;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:Lcom/google/android/gms/internal/ads/zzamk;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamk;->zzd()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzamy;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zzb()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    return-void
.end method
