.class public final Lcom/google/android/gms/internal/ads/zzaep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadc;


# static fields
.field private static final zza:[I

.field private static final zzb:[I

.field private static final zzc:[B

.field private static final zzd:[B


# instance fields
.field private final zze:[B

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzg:Z

.field private zzh:J

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzo:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzp:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzq:Lcom/google/android/gms/internal/ads/zzaeb;

.field private zzr:J

.field private zzs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaep;->zza:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:[I

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-string v0, "#!AMR\n"

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:[B

    const-string v0, "#!AMR-WB\n"

    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzp:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzadd;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput"
        }
    .end annotation

    const-string v0, "Illegal AMR "

    const-string v1, "Invalid padding bits for frame header "

    .line 6
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:[B

    .line 2
    invoke-interface {p1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    aget-byte v2, v2, v3

    and-int/lit16 v6, v2, 0x83

    const/4 v7, 0x0

    if-gtz v6, :cond_a

    shr-int/lit8 v1, v2, 0x3

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    and-int/lit8 v1, v1, 0xf

    if-eqz v2, :cond_1

    const/16 v6, 0xa

    if-lt v1, v6, :cond_2

    const/16 v6, 0xd

    if-le v1, v6, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_8

    const/16 v6, 0xc

    if-lt v1, v6, :cond_2

    const/16 v6, 0xe

    if-gt v1, v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:[I

    aget v0, v0, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zza:[I

    aget v0, v0, v1

    :goto_1
    move v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:I

    if-ne v0, v4, :cond_4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:I

    move v0, v2

    :cond_4
    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzl:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzl:I

    .line 6
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzp:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-interface {v0, p1, v2, v5}, Lcom/google/android/gms/internal/ads/zzaei;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result p1

    if-ne p1, v4, :cond_6

    return v4

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:I

    if-lez v0, :cond_7

    return v3

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzp:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzh:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 7
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzh:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzh:J

    return v3

    .line 3
    :cond_8
    :goto_3
    :try_start_1
    const-string p1, "WB"

    const-string v3, "NB"

    if-eq v5, v2, :cond_9

    move-object p1, v3

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frame type "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p1

    throw p1

    .line 2
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v4
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzadd;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 2
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 4
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:[B

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaep;->zzg(Lcom/google/android/gms/internal/ads/zzadd;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    .line 2
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    return v3

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:[B

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaep;->zzg(Lcom/google/android/gms/internal/ads/zzadd;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    .line 4
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    return v3

    :cond_1
    return v2
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzo:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaep;->zzh(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "Could not find AMR header."

    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p1

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzs:Z

    if-nez p2, :cond_6

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzs:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    const-string v1, "audio/amr-wb"

    if-eq p2, v0, :cond_2

    const-string v4, "audio/amr"

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-eq p2, v0, :cond_3

    const-string v1, "audio/3gpp"

    :cond_3
    if-eq p2, v0, :cond_4

    const/16 v5, 0x1f40

    goto :goto_2

    :cond_4
    const/16 v5, 0x3e80

    :goto_2
    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:[I

    const/16 v6, 0x8

    aget v0, v0, v6

    goto :goto_3

    .line 13
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zza:[I

    const/4 v6, 0x7

    aget v0, v0, v6

    .line 3
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzo:Lcom/google/android/gms/internal/ads/zzaei;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzx;

    .line 4
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 5
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 6
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 7
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 8
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 9
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p2

    .line 4
    invoke-interface {v6, p2}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 11
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaep;->zza(Lcom/google/android/gms/internal/ads/zzadd;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzq:Lcom/google/android/gms/internal/ads/zzaeb;

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaea;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(JJ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzq:Lcom/google/android/gms/internal/ads/zzaeb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzn:Lcom/google/android/gms/internal/ads/zzadf;

    .line 13
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    :goto_4
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return p2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadc;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadf;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzn:Lcom/google/android/gms/internal/ads/zzadf;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzo:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzp:Lcom/google/android/gms/internal/ads/zzaei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 1

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzh:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzr:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzm:J

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaep;->zzh(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result p1

    return p1
.end method
