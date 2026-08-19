.class public final Lcom/google/android/gms/internal/ads/zzamc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzej;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzek;

.field private final zze:Ljava/lang/String;

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamc;->zza:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzej;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamc;->zza:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzq:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzt:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamc;->zze:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzf:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzg:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzh()V

    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzg()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzo:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzh()V

    return-void
.end method

.method private final zzh()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzm:I

    return-void
.end method

.method private final zzi()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzaei;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzk:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzw:Lcom/google/android/gms/internal/ads/zzaei;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzx:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzu:I

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzl(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzf(I)Z

    move-result p0

    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzi:Lcom/google/android/gms/internal/ads/zzaei;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_1d

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzk:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v10, :cond_8

    const/16 v5, 0xa

    if-eq v0, v9, :cond_7

    if-eq v0, v4, :cond_2

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzu:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzw:Lcom/google/android/gms/internal/ads/zzaei;

    .line 31
    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzu:I

    if-ne v1, v0, :cond_0

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v8, v10

    .line 32
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzw:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    iget v13, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzu:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    .line 33
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzx:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzh()V

    goto :goto_0

    .line 64
    :cond_2
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzn:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_3

    move v0, v11

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 35
    invoke-direct {v6, v7, v13, v0}, Lcom/google/android/gms/internal/ads/zzamc;->zzk(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzs:Z

    if-nez v0, :cond_5

    .line 37
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "Detected audio object type: "

    .line 38
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_4
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 40
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v0

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzq:I

    .line 41
    sget v11, Lcom/google/android/gms/internal/ads/zzaby;->zza:I

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    shl-int/lit8 v2, v5, 0x7

    shl-int/2addr v0, v4

    and-int/lit16 v2, v2, 0x80

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    new-array v2, v9, [B

    aput-byte v11, v2, v8

    aput-byte v0, v2, v10

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaby;->zza([B)Lcom/google/android/gms/internal/ads/zzabw;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzx;

    .line 43
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzh:Ljava/lang/String;

    .line 44
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzg:Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v5, "audio/mp4a-latm"

    .line 46
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabw;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzabw;->zzb:I

    .line 48
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabw;->zza:I

    .line 49
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 50
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zze:Ljava/lang/String;

    .line 51
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzf:I

    .line 52
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    int-to-long v4, v2

    const-wide/32 v8, 0x3d090000

    .line 54
    div-long/2addr v8, v4

    iput-wide v8, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzt:J

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzi:Lcom/google/android/gms/internal/ads/zzaei;

    .line 55
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzs:Z

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 57
    :goto_2
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 58
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x7

    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzn:Z

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x9

    move v5, v0

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzi:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzt:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamc;->zzj(Lcom/google/android/gms/internal/ads/zzaei;JII)V

    goto/16 :goto_0

    .line 28
    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v1

    .line 60
    invoke-direct {v6, v7, v1, v5}, Lcom/google/android/gms/internal/ads/zzamc;->zzk(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    .line 61
    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    const/4 v1, 0x6

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzl()I

    move-result v0

    const/16 v4, 0xa

    add-int/lit8 v5, v0, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamc;->zzj(Lcom/google/android/gms/internal/ads/zzaei;JII)V

    goto/16 :goto_0

    .line 24
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v4

    .line 25
    aget-byte v2, v2, v4

    aput-byte v2, v1, v8

    .line 26
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzq:I

    if-eq v1, v5, :cond_9

    if-eq v0, v1, :cond_9

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzg()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzo:Z

    if-nez v1, :cond_a

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzo:Z

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzr:I

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzp:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzq:I

    .line 28
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzi()V

    goto/16 :goto_0

    .line 34
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v12

    :goto_4
    if-ge v11, v12, :cond_1c

    add-int/lit8 v13, v11, 0x1

    .line 3
    aget-byte v14, v0, v11

    and-int/lit16 v15, v14, 0xff

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzm:I

    const/16 v4, 0x200

    if-ne v8, v4, :cond_15

    int-to-byte v8, v15

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zzamc;->zzl(BB)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzo:Z

    if-nez v8, :cond_12

    add-int/lit8 v8, v11, -0x1

    .line 4
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 5
    invoke-static {v7, v2, v10}, Lcom/google/android/gms/internal/ads/zzamc;->zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const/4 v9, 0x7

    goto/16 :goto_8

    .line 6
    :cond_d
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 7
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v2

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzp:I

    if-eq v1, v5, :cond_e

    if-ne v2, v1, :cond_c

    :cond_e
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzq:I

    if-eq v1, v5, :cond_10

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 8
    invoke-static {v7, v1, v10}, Lcom/google/android/gms/internal/ads/zzamc;->zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5

    .line 9
    :cond_f
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 10
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v1

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzq:I

    if-ne v1, v9, :cond_c

    add-int/lit8 v1, v11, 0x1

    .line 11
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    :cond_10
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 12
    invoke-static {v7, v1, v3}, Lcom/google/android/gms/internal/ads/zzamc;->zzm(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xe

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    const/16 v1, 0xd

    .line 14
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v4

    const/4 v9, 0x7

    if-lt v4, v9, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v1

    add-int/2addr v8, v4

    if-ge v8, v1, :cond_12

    .line 15
    aget-byte v4, v16, v8

    if-ne v4, v5, :cond_11

    add-int/lit8 v8, v8, 0x1

    if-eq v8, v1, :cond_12

    .line 16
    aget-byte v1, v16, v8

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzamc;->zzl(BB)Z

    move-result v4

    if-eqz v4, :cond_16

    and-int/lit8 v1, v1, 0x8

    const/4 v4, 0x3

    shr-int/2addr v1, v4

    if-ne v1, v2, :cond_16

    goto :goto_5

    :cond_11
    const/16 v2, 0x49

    if-ne v4, v2, :cond_16

    add-int/lit8 v2, v8, 0x1

    if-eq v2, v1, :cond_12

    .line 17
    aget-byte v2, v16, v2

    const/16 v4, 0x44

    if-ne v2, v4, :cond_16

    add-int/lit8 v8, v8, 0x2

    if-eq v8, v1, :cond_12

    .line 18
    aget-byte v1, v16, v8

    const/16 v2, 0x33

    if-ne v1, v2, :cond_16

    :cond_12
    :goto_5
    and-int/lit8 v0, v14, 0x8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    .line 8
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzr:I

    and-int/lit8 v0, v14, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_6

    :cond_13
    move v0, v10

    :goto_6
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzn:Z

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzo:Z

    if-nez v0, :cond_14

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzk:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    goto :goto_7

    .line 19
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzi()V

    .line 20
    :goto_7
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    goto/16 :goto_0

    :cond_15
    move v9, v2

    .line 5
    :cond_16
    :goto_8
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzm:I

    or-int v2, v1, v15

    const/16 v4, 0x149

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x1ff

    if-eq v2, v4, :cond_1a

    const/16 v4, 0x344

    if-eq v2, v4, :cond_19

    const/16 v4, 0x433

    if-eq v2, v4, :cond_18

    const/16 v2, 0x100

    if-eq v1, v2, :cond_17

    iput v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzm:I

    move v2, v9

    const/16 v1, 0xd

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_4

    :cond_17
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    goto :goto_a

    :cond_18
    const/4 v1, 0x2

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzk:I

    const/4 v2, 0x3

    iput v2, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzl:I

    const/4 v4, 0x0

    iput v4, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzu:I

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzd:Lcom/google/android/gms/internal/ads/zzek;

    .line 21
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 22
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v8, 0x400

    goto :goto_9

    :cond_1a
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v8, 0x200

    goto :goto_9

    :cond_1b
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v8, 0x300

    :goto_9
    iput v8, v6, Lcom/google/android/gms/internal/ads/zzamc;->zzm:I

    :goto_a
    move v8, v4

    move v11, v13

    move v4, v2

    move v2, v9

    move v9, v1

    const/16 v1, 0xd

    goto/16 :goto_4

    .line 23
    :cond_1c
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzi:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzw:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzb:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string p2, "application/id3"

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzj:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzv:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamc;->zzg()V

    return-void
.end method
