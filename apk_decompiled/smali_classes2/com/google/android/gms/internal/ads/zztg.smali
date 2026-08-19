.class public abstract Lcom/google/android/gms/internal/ads/zztg;
.super Lcom/google/android/gms/internal/ads/zzhx;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzsz;

.field private zzB:I

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:J

.field private zzI:J

.field private zzJ:I

.field private zzK:I

.field private zzL:Ljava/nio/ByteBuffer;

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:I

.field private zzT:I

.field private zzU:I

.field private zzV:Z

.field private zzW:Z

.field private zzX:Z

.field private zzY:J

.field private zzZ:J

.field protected zza:Lcom/google/android/gms/internal/ads/zzhy;

.field private zzaa:Z

.field private zzab:Z

.field private zzac:Z

.field private zzad:Lcom/google/android/gms/internal/ads/zzte;

.field private zzae:J

.field private zzaf:Z

.field private zzag:Z

.field private zzah:Lcom/google/android/gms/internal/ads/zzrz;

.field private zzai:Lcom/google/android/gms/internal/ads/zzrz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzsu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzti;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhn;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhn;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhn;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzsn;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzrm;

.field private zzm:Lcom/google/android/gms/internal/ads/zzz;

.field private zzn:Lcom/google/android/gms/internal/ads/zzz;

.field private zzo:Lcom/google/android/gms/internal/ads/zzlt;

.field private zzp:Landroid/media/MediaCrypto;

.field private zzq:J

.field private zzr:F

.field private zzs:F

.field private zzt:Lcom/google/android/gms/internal/ads/zzsw;

.field private zzu:Lcom/google/android/gms/internal/ads/zzz;

.field private zzv:Landroid/media/MediaFormat;

.field private zzw:Z

.field private zzx:F

.field private zzy:Ljava/util/ArrayDeque;

.field private zzz:Lcom/google/android/gms/internal/ads/zztc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zztg;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzti;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhx;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzc:Lcom/google/android/gms/internal/ads/zzsu;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzti;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzd:Lcom/google/android/gms/internal/ads/zzti;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zztg;->zze:F

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhn;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zzhn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhn;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhn;

    const/4 p3, 0x2

    .line 6
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzh:Lcom/google/android/gms/internal/ads/zzhn;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzr:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzs:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzq:J

    new-instance p5, Ljava/util/ArrayDeque;

    .line 9
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Ljava/util/ArrayDeque;

    sget-object p5, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzte;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhn;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzx:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzB:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzK:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzI:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzae:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzH:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    return-void
.end method

.method protected static zzaQ(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzL:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzaR()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzK:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzL:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzaS(Lcom/google/android/gms/internal/ads/zzte;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzte;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzaf:Z

    :cond_0
    return-void
.end method

.method private final zzaT()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzah:Lcom/google/android/gms/internal/ads/zzrz;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    return-void
.end method

.method private final zzaU()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaT()V

    :goto_0
    return v1
.end method

.method private final zzaV()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzK:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaW(JJ)Z
    .locals 4

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method private final zzaX(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzkp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zzhn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhx;->zzcU(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zztg;->zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzai()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaY(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzq:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzq:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzaZ(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzcT()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzs:F

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzT()[Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzx:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzae()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzq(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzx:F

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzad()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzQ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzh:Lcom/google/android/gms/internal/ads/zzhn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrm;->zzb()V

    return-void
.end method

.method private final zzae()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    return-void
.end method

.method private final zzah()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaH()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaH()V

    .line 3
    throw v0
.end method

.method private final zzai()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzab:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaq()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzah()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaT()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzah()V

    return-void
.end method

.method private final zzao()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic zzax(Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zzlt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzo:Lcom/google/android/gms/internal/ads/zzlt;

    return-object p0
.end method


# virtual methods
.method protected zzC()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzad()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    .line 3
    throw v1
.end method

.method protected zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzuy;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzte;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzte;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzte;-><init>(JJJ)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzaS(Lcom/google/android/gms/internal/ads/zzte;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzag:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzap()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zztg;->zzae:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v7, v5

    if-ltz v2, :cond_3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzte;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzte;-><init>(JJJ)V

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzaS(Lcom/google/android/gms/internal/ads/zzte;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    .line 7
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzte;->zzd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzap()V

    :cond_2
    return-void

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzte;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzte;-><init>(JJJ)V

    .line 5
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzr:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzs:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzaZ(Lcom/google/android/gms/internal/ads/zzz;)Z

    return-void
.end method

.method public zzV(JJ)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzab:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1d

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaq()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_0
    move-object v4, v15

    goto/16 :goto_2b

    :catch_1
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_1
    move-object v4, v15

    goto/16 :goto_31

    :cond_0
    :try_start_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1d

    const/4 v11, 0x2

    if-nez v1, :cond_2

    .line 2
    :try_start_3
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zztg;->zzaX(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1d

    const/4 v10, 0x0

    if-eqz v1, :cond_1a

    :try_start_5
    const-string v1, "bypassRender"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzab:Z

    xor-int/2addr v1, v13

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zztg;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzq()Z

    move-result v1
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v1, :cond_5

    :try_start_6
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zztg;->zzK:I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzm()I

    move-result v16

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzsn;->zze:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzf()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzn()J

    move-result-wide v12

    .line 6
    invoke-direct {v15, v1, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zztg;->zzaW(JJ)Z

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Z

    move-result v19

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v12, :cond_4

    .line 7
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v20, v4

    move-wide/from16 v4, p3

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    move-wide/from16 v11, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    .line 8
    :try_start_7
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zztg;->zzar(JJLcom/google/android/gms/internal/ads/zzsw;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzsn;->zzn()J

    move-result-wide v1
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v15, p0

    .line 9
    :try_start_8
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzaE(J)V

    .line 10
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    const/4 v14, 0x0

    goto :goto_8

    :cond_3
    move-object/from16 v15, p0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :cond_4
    move-object v14, v10

    .line 38
    throw v14
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    :goto_4
    move-object v1, v0

    move-object v4, v15

    :goto_5
    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2b

    :catch_5
    move-exception v0

    :goto_6
    move-object v1, v0

    move-object v4, v15

    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_31

    :cond_5
    move-object v14, v10

    move-object/from16 v16, v11

    .line 10
    :goto_8
    :try_start_9
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a

    if-eqz v1, :cond_6

    const/4 v13, 0x1

    :try_start_a
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztg;->zzab:Z
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v12, 0x0

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v4, v15

    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_6
    const/4 v13, 0x1

    .line 128
    :try_start_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzP:Z

    if-eqz v1, :cond_7

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzh:Lcom/google/android/gms/internal/ads/zzhn;

    move-object/from16 v2, v16

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzp(Lcom/google/android/gms/internal/ads/zzhn;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9

    const/4 v12, 0x0

    :try_start_c
    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzP:Z

    goto :goto_a

    :cond_7
    move-object/from16 v2, v16

    const/4 v12, 0x0

    :goto_a
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzQ:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzq()Z

    move-result v1

    if-nez v1, :cond_8

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzad()V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzQ:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    if-eqz v1, :cond_19

    goto :goto_c

    :cond_8
    :goto_b
    move-object v10, v14

    move v14, v12

    goto/16 :goto_3

    :cond_9
    :goto_c
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    xor-int/2addr v1, v13

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzkp;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zztg;->zzh:Lcom/google/android/gms/internal/ads/zzhn;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    .line 17
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    .line 18
    invoke-virtual {v15, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzhx;->zzcU(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I

    move-result v4

    const/4 v10, -0x5

    if-eq v4, v10, :cond_16

    const/4 v5, -0x4

    if-eq v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzQ()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iput-wide v3, v15, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    goto/16 :goto_f

    .line 35
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Z

    move-result v4

    if-eqz v4, :cond_c

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iput-wide v3, v15, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    goto/16 :goto_f

    :cond_c
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    .line 19
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzQ()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzh()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    :cond_e
    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzac:Z
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    const-string v5, "audio/opus"

    if-eqz v4, :cond_11

    :try_start_d
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v4, :cond_10

    .line 20
    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzz;

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 21
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 22
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 23
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 24
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadx;->zza([B)I

    move-result v4

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzI(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    :cond_f
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 26
    invoke-virtual {v15, v4, v14}, Lcom/google/android/gms/internal/ads/zztg;->zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzac:Z

    goto :goto_d

    .line 36
    :cond_10
    throw v14

    .line 27
    :cond_11
    :goto_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhn;->zzk()V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 28
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhh;->zze()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 29
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zztg;->zzaj(Lcom/google/android/gms/internal/ads/zzhn;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzf()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(JJ)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztg;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzrm;->zza(Lcom/google/android/gms/internal/ads/zzhn;Ljava/util/List;)V

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzq()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_e

    .line 33
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzf()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzn()J

    move-result-wide v6

    .line 31
    invoke-direct {v15, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zztg;->zzaW(JJ)Z

    move-result v6

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    .line 32
    invoke-direct {v15, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zztg;->zzaW(JJ)Z

    move-result v4

    if-ne v6, v4, :cond_15

    .line 33
    :goto_e
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzp(Lcom/google/android/gms/internal/ads/zzhn;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_15
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztg;->zzP:Z

    goto :goto_f

    .line 34
    :cond_16
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;

    .line 18
    :cond_17
    :goto_f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzq()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhn;->zzk()V

    :cond_18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzq()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzQ:Z

    if-eqz v1, :cond_19

    goto/16 :goto_b

    .line 37
    :cond_19
    :goto_10
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    move v3, v12

    move-object v4, v15

    goto/16 :goto_28

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_11

    :catch_a
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_11

    :catch_b
    move-exception v0

    const/4 v12, 0x0

    goto :goto_12

    :catch_c
    move-exception v0

    move v12, v14

    :goto_11
    move-object v1, v0

    move v3, v12

    goto/16 :goto_0

    :catch_d
    move-exception v0

    move v12, v14

    :goto_12
    move-object v1, v0

    move v3, v12

    goto/16 :goto_1

    :cond_1a
    move v12, v14

    move-object v14, v10

    const/4 v10, -0x5

    .line 34
    :try_start_e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-eqz v1, :cond_51

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v8

    const-string v1, "drainAndFeed"

    .line 40
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_13
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-eqz v6, :cond_50

    .line 41
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaV()Z

    move-result v1
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1b

    if-nez v1, :cond_2a

    :try_start_f
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 42
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v2, :cond_21

    const/4 v1, -0x2

    if-ne v2, v1, :cond_1d

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztg;->zzX:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-eqz v1, :cond_1c

    .line 43
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzc()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzB:I

    if-eqz v2, :cond_1b

    const-string v2, "width"

    .line 44
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    const-string v2, "height"

    .line 45
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1b

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztg;->zzF:Z

    goto :goto_15

    .line 96
    :cond_1b
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzv:Landroid/media/MediaFormat;

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztg;->zzw:Z

    goto :goto_15

    .line 65
    :cond_1c
    throw v14

    .line 96
    :cond_1d
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzG:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    if-nez v1, :cond_1e

    iget v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    if-ne v1, v11, :cond_1f

    .line 66
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzai()V

    :cond_1f
    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzH:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zza()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_20

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzai()V

    :cond_20
    :goto_14
    move-wide v1, v8

    move-object/from16 v17, v14

    move-object v4, v15

    goto/16 :goto_1f

    :cond_21
    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zztg;->zzF:Z

    if-eqz v5, :cond_22

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzF:Z

    .line 63
    invoke-interface {v6, v2, v12}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(IZ)V

    :goto_15
    move-wide v1, v8

    move-object/from16 v17, v14

    move-object v4, v15

    goto/16 :goto_1b

    .line 46
    :cond_22
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_23

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_23

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzai()V

    goto :goto_14

    :cond_23
    iput v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzK:I

    .line 47
    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzL:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_24

    .line 48
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzL:Ljava/nio/ByteBuffer;

    .line 49
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    :cond_24
    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzf()J

    move-result-wide v17

    cmp-long v2, v10, v17

    if-gez v2, :cond_25

    move v2, v13

    goto :goto_16

    :cond_25
    move v2, v12

    :goto_16
    iput-boolean v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzM:Z

    iget-wide v10, v15, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    cmp-long v2, v10, v3

    if-eqz v2, :cond_26

    .line 51
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_26

    move v2, v13

    goto :goto_17

    :cond_26
    move v2, v12

    :goto_17
    iput-boolean v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzN:Z

    .line 52
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    .line 53
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzc(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    if-nez v1, :cond_27

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaf:Z

    if-eqz v2, :cond_27

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzv:Landroid/media/MediaFormat;

    if-eqz v2, :cond_27

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    .line 54
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    :cond_27
    if-eqz v1, :cond_28

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_18

    .line 69
    :cond_28
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzw:Z

    if-eqz v1, :cond_2a

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v1, :cond_2a

    .line 54
    :goto_18
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v1, :cond_29

    .line 55
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zztg;->zzv:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzw:Z

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztg;->zzaf:Z

    goto :goto_19

    .line 71
    :cond_29
    throw v14
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_7

    .line 55
    :cond_2a
    :goto_19
    :try_start_10
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zztg;->zzL:Ljava/nio/ByteBuffer;

    iget v10, v15, Lcom/google/android/gms/internal/ads/zztg;->zzK:I

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zztg;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 56
    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v2, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zztg;->zzM:Z

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztg;->zzN:Z

    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zztg;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v14, :cond_4f

    .line 57
    move-object/from16 v17, v14

    check-cast v17, Lcom/google/android/gms/internal/ads/zzz;
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_1b

    const/16 v17, 0x1

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    move-wide/from16 v2, p1

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v4, p3

    move-wide/from16 v23, v8

    move v8, v10

    move/from16 v9, v21

    move/from16 v10, v17

    move-object/from16 v25, v11

    move-wide/from16 v11, v19

    move/from16 v13, v22

    move-object/from16 v16, v14

    const/16 v17, 0x0

    move/from16 v14, v18

    move-object/from16 v15, v16

    .line 58
    :try_start_11
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zztg;->zzar(JJLcom/google/android/gms/internal/ads/zzsw;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_17

    if-eqz v1, :cond_2f

    move-object/from16 v1, v25

    .line 59
    :try_start_12
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_10

    move-object/from16 v4, p0

    :try_start_13
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zztg;->zzaE(J)V

    .line 60
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2b

    const/4 v14, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v14, 0x0

    :goto_1a
    if-nez v14, :cond_2c

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzW:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzN:Z

    if-eqz v1, :cond_2c

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdg;->zza()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzH:J

    .line 62
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaR()V

    if-eqz v14, :cond_2d

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzai()V

    goto :goto_1e

    :cond_2d
    move-wide/from16 v1, v23

    .line 64
    :goto_1b
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzaY(J)Z

    move-result v3
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_e

    if-nez v3, :cond_2e

    goto :goto_1f

    :cond_2e
    move-wide v8, v1

    move-object v15, v4

    move-object/from16 v14, v17

    const/4 v10, -0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_13

    :catch_e
    move-exception v0

    :goto_1c
    move-object v1, v0

    goto/16 :goto_5

    :catch_f
    move-exception v0

    :goto_1d
    move-object v1, v0

    goto/16 :goto_7

    :catch_10
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1c

    :catch_11
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1d

    :cond_2f
    move-object/from16 v4, p0

    :goto_1e
    move-wide/from16 v1, v23

    :goto_1f
    :try_start_14
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-eqz v5, :cond_4d

    iget v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_4d

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    if-eqz v3, :cond_30

    goto/16 :goto_26

    .line 73
    :cond_30
    move-object v3, v5

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsw;

    iget v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_15

    if-gez v3, :cond_31

    .line 74
    :try_start_15
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzsw;->zza()I

    move-result v3

    iput v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    if-ltz v3, :cond_4d

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    .line 75
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzsw;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v6, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_31
    :try_start_16
    iget v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzT:I
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_15

    const/4 v13, 0x1

    if-ne v3, v13, :cond_33

    :try_start_17
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzG:Z

    if-nez v1, :cond_32

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzW:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 111
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzk(IIIJI)V

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzao()V

    :cond_32
    iput v12, v4, Lcom/google/android/gms/internal/ads/zztg;->zzT:I
    :try_end_17
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_12

    const/4 v3, 0x0

    goto/16 :goto_27

    :catch_12
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :cond_33
    :try_start_18
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzE:Z
    :try_end_18
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_14

    if-eqz v3, :cond_35

    const/4 v3, 0x0

    :try_start_19
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzE:Z

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_34

    .line 77
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    sget-object v7, Lcom/google/android/gms/internal/ads/zztg;->zzb:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x26

    .line 78
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzk(IIIJI)V

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzao()V

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    goto/16 :goto_25

    .line 113
    :cond_34
    throw v17

    :cond_35
    const/4 v3, 0x0

    .line 110
    iget v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    if-ne v6, v13, :cond_39

    move v14, v3

    :goto_20
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v6, :cond_38

    .line 80
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_37

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    .line 81
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_36

    .line 82
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_20

    .line 114
    :cond_36
    throw v17

    .line 82
    :cond_37
    iput v12, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    goto :goto_21

    .line 124
    :cond_38
    throw v17

    .line 82
    :cond_39
    :goto_21
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_4c

    .line 83
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzk()Lcom/google/android/gms/internal/ads/zzkp;

    move-result-object v8
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_19

    .line 85
    :try_start_1a
    invoke-virtual {v4, v8, v6, v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzcU(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I

    move-result v6
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzhm; {:try_start_1a .. :try_end_1a} :catch_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_19

    const/4 v9, -0x3

    if-ne v6, v9, :cond_3a

    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzQ()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    goto/16 :goto_27

    :cond_3a
    const/4 v14, -0x5

    if-ne v6, v14, :cond_3c

    iget v5, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    if-ne v5, v12, :cond_3b

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    .line 89
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    .line 90
    :cond_3b
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zztg;->zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;

    goto/16 :goto_25

    :cond_3c
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Z

    move-result v8

    if-eqz v8, :cond_3f

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    iget v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    if-ne v1, v12, :cond_3d

    .line 115
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    :cond_3d
    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    if-nez v1, :cond_3e

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzai()V

    goto/16 :goto_27

    :cond_3e
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zzG:Z

    if-nez v1, :cond_4e

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzW:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 117
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzk(IIIJI)V

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzao()V

    goto/16 :goto_27

    :cond_3f
    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    if-nez v8, :cond_40

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzg()Z

    move-result v8

    if-nez v8, :cond_40

    .line 109
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    if-ne v5, v12, :cond_4b

    iput v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    goto/16 :goto_25

    .line 91
    :cond_40
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztg;->zzaO(Lcom/google/android/gms/internal/ads/zzhn;)Z

    move-result v8

    if-nez v8, :cond_4b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhn;->zzl()Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzhn;->zzb:Lcom/google/android/gms/internal/ads/zzhk;

    .line 92
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzhk;->zzb(I)V

    :cond_41
    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/zztg;->zzac:Z

    if-eqz v7, :cond_45

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zztg;->zzk:Ljava/util/ArrayDeque;

    .line 93
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_43

    .line 94
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzte;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v11, :cond_42

    .line 95
    move-object v15, v11

    check-cast v15, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzd(JLjava/lang/Object;)V

    goto :goto_22

    .line 119
    :cond_42
    throw v17

    .line 104
    :cond_43
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    .line 96
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v11, :cond_44

    move-object v15, v11

    check-cast v15, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzd(JLjava/lang/Object;)V

    .line 95
    :goto_22
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzac:Z

    goto :goto_23

    .line 121
    :cond_44
    throw v17

    .line 95
    :cond_45
    :goto_23
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    .line 97
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzQ()Z

    move-result v7

    if-nez v7, :cond_46

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzh()Z

    move-result v7

    if-eqz v7, :cond_47

    :cond_46
    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    .line 98
    :cond_47
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhn;->zzk()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zze()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 99
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztg;->zzaj(Lcom/google/android/gms/internal/ads/zzhn;)V

    .line 100
    :cond_48
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztg;->zzaF(Lcom/google/android/gms/internal/ads/zzhn;)V

    .line 101
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztg;->zzau(Lcom/google/android/gms/internal/ads/zzhn;)I

    if-eqz v8, :cond_49

    .line 105
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsw;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzhn;->zzb:Lcom/google/android/gms/internal/ads/zzhk;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move v6, v7

    move v7, v14

    .line 106
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzl(IILcom/google/android/gms/internal/ads/zzhk;JI)V

    goto :goto_24

    .line 102
    :cond_49
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsw;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zztg;->zzJ:I

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_4a

    .line 103
    move-object v8, v6

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    const/4 v14, 0x0

    move v6, v7

    move v7, v14

    .line 104
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzk(IIIJI)V

    .line 107
    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzao()V

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    iput v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 108
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzhy;->zzc:I

    add-int/2addr v6, v13

    iput v6, v5, Lcom/google/android/gms/internal/ads/zzhy;->zzc:I

    goto :goto_25

    .line 120
    :cond_4a
    throw v17

    :catch_13
    move-exception v0

    move-object v5, v0

    .line 86
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zztg;->zzak(Ljava/lang/Exception;)V

    .line 87
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zztg;->zzaX(I)Z

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzah()V

    .line 110
    :cond_4b
    :goto_25
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzaY(J)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto/16 :goto_1f

    .line 123
    :cond_4c
    throw v17

    :catch_14
    move-exception v0

    const/4 v3, 0x0

    goto :goto_2a

    :cond_4d
    :goto_26
    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 122
    :cond_4e
    :goto_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_28

    :catch_15
    move-exception v0

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto :goto_2a

    :catch_16
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_30

    :catch_17
    move-exception v0

    const/4 v3, 0x0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    goto :goto_2a

    :catch_18
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_30

    :cond_4f
    move v3, v12

    move-object v4, v15

    const/16 v17, 0x0

    .line 70
    throw v17

    :cond_50
    move v3, v12

    move-object/from16 v17, v14

    move-object v4, v15

    .line 125
    throw v17

    :cond_51
    move v3, v12

    move-object v4, v15

    .line 69
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 126
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd(J)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    .line 127
    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/ads/zztg;->zzaX(I)Z

    .line 37
    :goto_28
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zza()V
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_19

    return-void

    :catch_19
    move-exception v0

    goto :goto_2a

    :catch_1a
    move-exception v0

    goto :goto_30

    :catch_1b
    move-exception v0

    move v3, v12

    goto :goto_29

    :catch_1c
    move-exception v0

    move v3, v12

    goto :goto_2f

    :catch_1d
    move-exception v0

    move v3, v14

    :goto_29
    move-object v4, v15

    :goto_2a
    move-object v1, v0

    .line 129
    :goto_2b
    instance-of v2, v1, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_52

    goto :goto_2c

    .line 130
    :cond_52
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 131
    array-length v6, v5

    if-lez v6, :cond_56

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 133
    :goto_2c
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzak(Ljava/lang/Exception;)V

    if-eqz v2, :cond_53

    .line 134
    move-object v2, v1

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    .line 135
    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v2

    if-eqz v2, :cond_53

    move v14, v13

    goto :goto_2d

    :cond_53
    move v14, v3

    :goto_2d
    if-eqz v14, :cond_54

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V

    :cond_54
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zztg;->zzA:Lcom/google/android/gms/internal/ads/zzsz;

    .line 137
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsz;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->zza:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_55

    const/16 v2, 0xfa6

    goto :goto_2e

    :cond_55
    const/16 v2, 0xfa3

    :goto_2e
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    .line 138
    invoke-virtual {v4, v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v1

    throw v1

    .line 132
    :cond_56
    throw v1

    :catch_1e
    move-exception v0

    move v3, v14

    :goto_2f
    move-object v4, v15

    :goto_30
    move-object v1, v0

    .line 127
    :goto_31
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    .line 139
    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzl(I)I

    move-result v5

    .line 140
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v1

    .line 141
    throw v1
.end method

.method public zzW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzab:Z

    return v0
.end method

.method public zzX()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzS()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaV()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zztg;->zzI:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zztg;->zzI:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzY(Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzd:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzaa(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztn; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsz;)Lcom/google/android/gms/internal/ads/zzsy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsz;)V

    return-object v0
.end method

.method protected final zzaB()Lcom/google/android/gms/internal/ads/zzsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzA:Lcom/google/android/gms/internal/ads/zzsz;

    return-object v0
.end method

.method public final zzaC()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzag:Z

    return-void
.end method

.method protected final zzaD()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    const-string v9, "MediaCodecRenderer"

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-nez v0, :cond_4d

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    if-nez v0, :cond_4d

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v10, :cond_0

    goto/16 :goto_1d

    :cond_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zztg;->zzaM(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzad()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    .line 7
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzo(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzo(I)V

    .line 7
    :goto_0
    iput-boolean v11, v8, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    return-void

    .line 6
    :cond_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzah:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzah:Lcom/google/android/gms/internal/ads/zzrz;

    .line 9
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzsa;->zza:Z

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrz;->zza()Lcom/google/android/gms/internal/ads/zzrr;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v14, 0x0

    if-eqz v13, :cond_4c

    .line 11
    move-object v0, v13

    check-cast v0, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_0 .. :try_end_0} :catch_10

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzd:Lcom/google/android/gms/internal/ads/zzti;

    .line 12
    invoke-virtual {v8, v0, v13, v12}, Lcom/google/android/gms/internal/ads/zztg;->zzag(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    .line 16
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v14, v8, Lcom/google/android/gms/internal/ads/zztg;->zzz:Lcom/google/android/gms/internal/ads/zztc;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zztn; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_1 .. :try_end_1} :catch_10

    goto :goto_1

    :catch_0
    move-exception v0

    .line 146
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zztc;

    const v2, -0xc34e

    .line 17
    invoke-direct {v1, v13, v0, v12, v2}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 16
    :cond_5
    :goto_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 19
    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    if-eqz v15, :cond_4a

    .line 20
    move-object v0, v15

    check-cast v0, Ljava/util/ArrayDeque;

    :goto_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-nez v0, :cond_49

    .line 21
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzsz;

    if-eqz v6, :cond_48

    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    .line 22
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zztg;->zzaN(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 23
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zztg;->zzaP(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v0, :cond_4d

    :try_start_3
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v0, :cond_45

    .line 24
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    .line 25
    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget v1, v8, Lcom/google/android/gms/internal/ads/zztg;->zzs:F

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzT()[Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v3

    invoke-virtual {v8, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zztg;->zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F

    move-result v1

    iget v3, v8, Lcom/google/android/gms/internal/ads/zztg;->zze:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v16

    .line 28
    invoke-virtual {v8, v6, v0, v14, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzaf(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzst;

    move-result-object v3

    sget v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v7, 0x1f

    if-lt v5, v7, :cond_7

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzo()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzoz;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v5

    .line 31
    sget-object v7, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v5, v7}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzst;->zzb:Landroid/media/MediaFormat;

    const-string v12, "log-session-id"

    .line 32
    invoke-virtual {v5}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v12, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    :cond_7
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zztg;->zzc:Lcom/google/android/gms/internal/ads/zzsu;

    .line 35
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzsu;->zzd(Lcom/google/android/gms/internal/ads/zzst;)Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v5

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    new-instance v7, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zztd;-><init>(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zztf;)V

    .line 36
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzsw;->zzs(Lcom/google/android/gms/internal/ads/zzsv;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v18

    .line 40
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzsz;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    if-nez v5, :cond_37

    :try_start_6
    const-string v5, "Format exceeds selected codec\'s capabilities [%s, %s]"

    const-string v12, ","

    .line 41
    move-object/from16 v20, v12

    check-cast v20, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id="

    .line 43
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zza:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mimeType="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zzn:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    if-eqz v7, :cond_8

    :try_start_7
    const-string v11, ", container="

    .line 44
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v6

    move-object/from16 v21, v10

    :goto_3
    move-object/from16 v23, v13

    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_18

    :cond_8
    :goto_5
    :try_start_8
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zzj:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    const/4 v11, -0x1

    if-eq v7, v11, :cond_9

    :try_start_9
    const-string v4, ", bitrate="

    .line 45
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_9
    :try_start_a
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    if-eqz v4, :cond_a

    :try_start_b
    const-string v7, ", codecs="

    .line 46
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_a
    :try_start_c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    if-eqz v4, :cond_11

    :try_start_d
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 47
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v21, v10

    const/4 v11, 0x0

    :goto_6
    :try_start_e
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v11, v10, :cond_10

    .line 48
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzr;->zza:Ljava/util/UUID;

    move-object/from16 v22, v4

    .line 49
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zzb:Ljava/util/UUID;

    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    if-eqz v4, :cond_b

    :try_start_f
    const-string v4, "cenc"

    .line 50
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :goto_7
    move-object/from16 v23, v13

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v11, v6

    goto :goto_3

    :cond_b
    :try_start_10
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zzc:Ljava/util/UUID;

    .line 51
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    if-eqz v4, :cond_c

    :try_start_11
    const-string v4, "clearkey"

    .line 52
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_7

    :cond_c
    :try_start_12
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zze:Ljava/util/UUID;

    .line 53
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    if-eqz v4, :cond_d

    :try_start_13
    const-string v4, "playready"

    .line 54
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_7

    :cond_d
    :try_start_14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zzd:Ljava/util/UUID;

    .line 55
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    if-eqz v4, :cond_e

    :try_start_15
    const-string v4, "widevine"

    .line 56
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_7

    :cond_e
    :try_start_16
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zza:Ljava/util/UUID;

    .line 57
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    if-eqz v4, :cond_f

    :try_start_17
    const-string v4, "universal"

    .line 58
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    goto :goto_7

    .line 59
    :cond_f
    :try_start_18
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    move-object/from16 v23, v13

    :try_start_19
    const-string v13, "unknown ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    goto :goto_6

    :cond_10
    move-object/from16 v23, v13

    const-string v4, ", drm=["

    .line 60
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v14, v7, v12}, Lcom/google/android/gms/internal/ads/zzfto;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    .line 62
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v21, v10

    :goto_9
    move-object/from16 v23, v13

    :goto_a
    move-object v11, v6

    goto/16 :goto_4

    :cond_11
    move-object/from16 v21, v10

    move-object/from16 v23, v13

    :goto_b
    :try_start_1a
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzv:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const/4 v7, -0x1

    if-eq v4, v7, :cond_12

    :try_start_1b
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-eq v10, v7, :cond_12

    const-string v7, ", res="

    .line 63
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_12
    :goto_c
    :try_start_1c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzz:F

    float-to-double v10, v4

    .line 64
    sget v7, Lcom/google/android/gms/internal/ads/zzfzp;->zza:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move-object v13, v6

    add-double v6, v10, v24

    move-object/from16 v22, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 65
    :try_start_1d
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8

    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v6, v24

    if-lez v6, :cond_14

    cmpl-double v6, v10, v8

    if-eqz v6, :cond_14

    .line 66
    :try_start_1e
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_14

    :cond_13
    const-string v6, ", par="

    .line 67
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%.3f"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 68
    invoke-static {v7, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    const/4 v10, 0x1

    move-object/from16 v9, p0

    move-object v11, v13

    move-object/from16 v8, v22

    goto/16 :goto_19

    :cond_14
    :goto_d
    :try_start_1f
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8

    if-eqz v4, :cond_16

    :try_start_20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zze()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    const-string v6, ", color="

    .line 69
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_6

    :cond_16
    :try_start_21
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzx:F
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_17

    :try_start_22
    const-string v6, ", fps="

    .line 70
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6

    :cond_17
    :try_start_23
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzD:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8

    const/4 v6, -0x1

    if-eq v4, v6, :cond_18

    :try_start_24
    const-string v6, ", maxSubLayers="

    .line 71
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6

    :cond_18
    :try_start_25
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzE:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8

    const/4 v6, -0x1

    if-eq v4, v6, :cond_19

    :try_start_26
    const-string v6, ", channels="

    .line 72
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6

    :cond_19
    :try_start_27
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzF:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1a

    :try_start_28
    const-string v6, ", sample_rate="

    .line 73
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6

    :cond_1a
    :try_start_29
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_8

    if-eqz v4, :cond_1b

    :try_start_2a
    const-string v6, ", language="

    .line 74
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6

    :cond_1b
    :try_start_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzc:Ljava/util/List;

    .line 75
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8

    const-string v7, "]"

    if-nez v6, :cond_1c

    :try_start_2c
    const-string v6, ", labels=["

    .line 76
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzw;-><init>()V

    .line 77
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzfxm;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftl;)Ljava/util/List;

    move-result-object v4

    .line 78
    invoke-static {v14, v4, v12}, Lcom/google/android/gms/internal/ads/zzfto;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_6

    :cond_1c
    :try_start_2d
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zze:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_8

    if-eqz v4, :cond_1f

    :try_start_2e
    const-string v6, ", selectionFlags=["

    .line 80
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_1d

    const-string v8, "default"

    .line 82
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1e

    const-string v4, "forced"

    .line 83
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1e
    invoke-static {v14, v6, v12}, Lcom/google/android/gms/internal/ads/zzfto;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_6

    :cond_1f
    :try_start_2f
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzf:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_8

    const v6, 0x8000

    if-eqz v4, :cond_30

    :try_start_30
    const-string v8, ", roleFlags=["

    .line 86
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_20

    const-string v9, "main"

    .line 88
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_21

    const-string v9, "alt"

    .line 89
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_22

    const-string v9, "supplementary"

    .line 90
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_23

    const-string v9, "commentary"

    .line 91
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v9, v4, 0x10

    if-eqz v9, :cond_24

    const-string v9, "dub"

    .line 92
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit8 v9, v4, 0x20

    if-eqz v9, :cond_25

    const-string v9, "emergency"

    .line 93
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit8 v9, v4, 0x40

    if-eqz v9, :cond_26

    const-string v9, "caption"

    .line 94
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_27

    const-string v9, "subtitle"

    .line 95
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v9, v4, 0x100

    if-eqz v9, :cond_28

    const-string v9, "sign"

    .line 96
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v9, v4, 0x200

    if-eqz v9, :cond_29

    const-string v9, "describes-video"

    .line 97
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_2a

    const-string v9, "describes-music"

    .line 98
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v9, v4, 0x800

    if-eqz v9, :cond_2b

    const-string v9, "enhanced-intelligibility"

    .line 99
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v9, v4, 0x1000

    if-eqz v9, :cond_2c

    const-string v9, "transcribes-dialog"

    .line 100
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int/lit16 v9, v4, 0x2000

    if-eqz v9, :cond_2d

    const-string v9, "easy-read"

    .line 101
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    and-int/lit16 v9, v4, 0x4000

    if-eqz v9, :cond_2e

    const-string v9, "trick-play"

    .line 102
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    and-int v9, v4, v6

    if-eqz v9, :cond_2f

    const-string v9, "auxiliary"

    .line 103
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2f
    invoke-static {v14, v8, v12}, Lcom/google/android/gms/internal/ads/zzfto;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    and-int/2addr v4, v6

    if-eqz v4, :cond_36

    const-string v4, ", auxiliaryTrackType="

    .line 106
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzg:I

    if-eqz v4, :cond_35

    const/4 v6, 0x1

    if-eq v4, v6, :cond_34

    const/4 v6, 0x2

    if-eq v4, v6, :cond_33

    const/4 v6, 0x3

    if-eq v4, v6, :cond_32

    const/4 v6, 0x4

    if-ne v4, v6, :cond_31

    .line 119
    const-string v4, "depth metadata"

    goto :goto_e

    .line 38
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported auxiliary track type"

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_32
    const-string v4, "depth-inverse"

    goto :goto_e

    :cond_33
    const-string v4, "depth-linear"

    goto :goto_e

    :cond_34
    const-string v4, "original"

    goto :goto_e

    .line 106
    :cond_35
    const-string v4, "undefined"

    .line 107
    :goto_e
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_6

    :cond_36
    :try_start_31
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_8

    move-object/from16 v8, v22

    .line 109
    :try_start_32
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v8, v22

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v13, v6

    move-object v8, v9

    goto :goto_f

    :catch_a
    move-exception v0

    move-object v8, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v13

    move-object v13, v6

    :goto_f
    const/4 v10, 0x1

    move-object/from16 v9, p0

    :goto_10
    move-object v11, v13

    goto/16 :goto_19

    :cond_37
    move-object v8, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v13

    move-object v13, v6

    :goto_11
    move-object/from16 v9, p0

    :try_start_33
    iput-object v13, v9, Lcom/google/android/gms/internal/ads/zztg;->zzA:Lcom/google/android/gms/internal/ads/zzsz;

    iput v1, v9, Lcom/google/android/gms/internal/ads/zztg;->zzx:F

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_39

    const-string v4, "OMX.Exynos.avc.dec.secure"

    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SM-T585"

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SM-A510"

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SM-A520"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SM-J700"

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_38
    const/4 v4, 0x2

    goto :goto_12

    :cond_39
    const/16 v4, 0x18

    if-ge v0, v4, :cond_3c

    .line 133
    const-string v4, "OMX.Nvidia.h264.decode"

    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_3a
    const-string v4, "flounder"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "flounder_lte"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "grouper"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "tilapia"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_3b
    const/4 v4, 0x1

    goto :goto_12

    :cond_3c
    const/4 v4, 0x0

    .line 114
    :goto_12
    iput v4, v9, Lcom/google/android/gms/internal/ads/zztg;->zzB:I

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_3d

    const-string v5, "c2.android.aac.decoder"

    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_13

    :cond_3d
    const/4 v5, 0x0

    :goto_13
    iput-boolean v5, v9, Lcom/google/android/gms/internal/ads/zztg;->zzC:Z

    const/16 v5, 0x17

    if-gt v0, v5, :cond_3e

    const-string v5, "OMX.google.vorbis.decoder"

    .line 121
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_14

    :cond_3e
    const/4 v5, 0x0

    :goto_14
    iput-boolean v5, v9, Lcom/google/android/gms/internal/ads/zztg;->zzD:Z

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    if-gt v0, v1, :cond_40

    const-string v1, "OMX.rk.video_decoder.avc"

    .line 122
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_16

    :cond_3f
    :goto_15
    const/4 v0, 0x1

    goto :goto_17

    :cond_40
    :goto_16
    if-gt v0, v4, :cond_41

    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    .line 123
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 126
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    .line 127
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 128
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_41
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/zzsz;->zzf:Z

    if-eqz v0, :cond_42

    goto :goto_15

    :cond_42
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzG:Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-eqz v0, :cond_44

    .line 130
    check-cast v0, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzcT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iput-wide v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzI:J

    :cond_43
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 132
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zza:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_c

    const/4 v10, 0x1

    add-int/2addr v1, v10

    :try_start_34
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zza:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_b

    sub-long v6, v18, v16

    move-object/from16 v1, p0

    move-wide/from16 v4, v18

    move-object v11, v13

    .line 133
    :try_start_35
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zztg;->zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzst;JJ)V

    move v11, v10

    move-object/from16 v10, v21

    move-object/from16 v13, v23

    goto/16 :goto_1b

    :catch_b
    move-exception v0

    goto/16 :goto_10

    :cond_44
    move-object v11, v13

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 134
    throw v1

    :catch_c
    move-exception v0

    move-object v11, v13

    const/4 v10, 0x1

    goto :goto_19

    :catchall_0
    move-exception v0

    move-object/from16 v21, v10

    move v10, v11

    move-object/from16 v23, v13

    move-object v11, v6

    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    throw v0

    :cond_45
    move-object/from16 v21, v10

    move v10, v11

    move-object/from16 v23, v13

    move-object v1, v14

    move-object v11, v6

    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    .line 136
    throw v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_d

    :catch_d
    move-exception v0

    goto :goto_19

    :catch_e
    move-exception v0

    move-object/from16 v21, v10

    move v10, v11

    move-object/from16 v23, v13

    move-object v11, v6

    :goto_18
    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    .line 144
    :goto_19
    :try_start_36
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztc;

    move-object/from16 v2, v23

    const/4 v3, 0x0

    .line 139
    invoke-direct {v1, v2, v0, v3, v11}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsz;)V

    .line 140
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzak(Ljava/lang/Exception;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzz:Lcom/google/android/gms/internal/ads/zztc;

    if-nez v0, :cond_46

    iput-object v1, v9, Lcom/google/android/gms/internal/ads/zztg;->zzz:Lcom/google/android/gms/internal/ads/zztc;

    goto :goto_1a

    .line 141
    :cond_46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztc;->zza(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zztc;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzz:Lcom/google/android/gms/internal/ads/zztc;

    .line 142
    :goto_1a
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    move-object v13, v2

    move v11, v10

    move-object/from16 v10, v21

    :goto_1b
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    goto/16 :goto_2

    :cond_47
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztg;->zzz:Lcom/google/android/gms/internal/ads/zztc;

    .line 143
    throw v0

    :cond_48
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 144
    throw v1

    :cond_49
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 119
    iput-object v1, v9, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    return-void

    :cond_4a
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 145
    throw v1

    :cond_4b
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v2, v13

    move-object v1, v14

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zztc;

    const v3, -0xc34f

    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_4c
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 146
    throw v1
    :try_end_36
    .catch Lcom/google/android/gms/internal/ads/zztc; {:try_start_36 .. :try_end_36} :catch_f

    :catch_f
    move-exception v0

    goto :goto_1c

    :catch_10
    move-exception v0

    move-object v9, v8

    move-object/from16 v21, v10

    :goto_1c
    const/16 v1, 0xfa1

    move-object/from16 v2, v21

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object v0

    .line 148
    throw v0

    :cond_4d
    :goto_1d
    move-object v9, v8

    return-void
.end method

.method protected zzaE(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzae:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzte;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzte;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzte;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztg;->zzaS(Lcom/google/android/gms/internal/ads/zzte;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzaF(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    return-void
.end method

.method protected final zzaG()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhy;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhy;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzA:Lcom/google/android/gms/internal/ads/zzsz;

    if-eqz v1, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zztg;->zzam(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzah:Lcom/google/android/gms/internal/ads/zzrz;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaI()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzah:Lcom/google/android/gms/internal/ads/zzrz;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaI()V

    .line 6
    throw v1
.end method

.method protected zzaH()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzao()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaR()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzI:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzW:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzH:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzE:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzF:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzN:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzY:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzZ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzae:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    return-void
.end method

.method protected final zzaI()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzA:Lcom/google/android/gms/internal/ads/zzsz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzv:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzX:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzx:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzB:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzC:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    return-void
.end method

.method protected final zzaJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    :cond_0
    return v0
.end method

.method protected final zzaK()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzC:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzX:Z

    if-eqz v2, :cond_4

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzD:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzW:Z

    if-nez v2, :cond_4

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaT()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V

    return v3

    .line 5
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzah()V

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V

    return v3
.end method

.method protected final zzaL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    return v0
.end method

.method protected final zzaM(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzas(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaN(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaO(Lcom/google/android/gms/internal/ads/zzhn;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected zzaP(Lcom/google/android/gms/internal/ads/zzsz;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract zzaa(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation
.end method

.method protected zzab(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzac:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 2
    const-string v4, "video/av01"

    .line 4
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    :cond_0
    move-object v8, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkp;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzQ:Z

    return-object v4

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-nez p1, :cond_2

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zztg;->zzy:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    return-object v4

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzA:Lcom/google/android/gms/internal/ads/zzsz;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    .line 22
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v2, v7

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzah:Lcom/google/android/gms/internal/ads/zzrz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztg;->zzai:Lcom/google/android/gms/internal/ads/zzrz;

    if-ne v2, v4, :cond_12

    if-eq v4, v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 10
    sget v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 11
    :cond_4
    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zztg;->zzab(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzhz;->zzd:I

    const/4 v6, 0x3

    if-eqz v5, :cond_e

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_a

    if-eq v5, v10, :cond_6

    .line 12
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zztg;->zzaZ(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_f

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaU()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    .line 14
    :cond_6
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zztg;->zzaZ(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzS:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zztg;->zzB:I

    if-eq v9, v10, :cond_9

    if-ne v9, v0, :cond_8

    iget v9, v8, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    if-ne v9, v11, :cond_8

    iget v9, v8, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-ne v9, v11, :cond_8

    goto :goto_1

    :cond_8
    move v0, v3

    :cond_9
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzE:Z

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_f

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaU()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    .line 16
    :cond_a
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zztg;->zzaZ(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v11

    if-nez v11, :cond_b

    :goto_2
    move v10, v9

    goto :goto_4

    :cond_b
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zztg;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_c

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaU()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzV:Z

    if-eqz v2, :cond_f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzT:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzD:Z

    if-eqz v2, :cond_d

    iput v6, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    goto :goto_4

    :cond_d
    iput v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    goto :goto_3

    .line 18
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzae()V

    :cond_f
    :goto_3
    move v10, v3

    :goto_4
    if-eqz v5, :cond_11

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    if-ne v0, p1, :cond_10

    iget p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzU:I

    if-ne p1, v6, :cond_11

    :cond_10
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v9, 0x0

    move-object v5, p1

    .line 19
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object p1

    :cond_11
    return-object v4

    .line 20
    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzae()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v9, 0x0

    const/16 v10, 0x80

    move-object v5, p1

    .line 21
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object p1

    .line 1
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    .line 3
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    .line 2
    throw p1
.end method

.method protected abstract zzaf(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzst;
.end method

.method protected abstract zzag(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation
.end method

.method protected zzaj(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzak(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzst;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzam(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzap()V
    .locals 0

    return-void
.end method

.method protected zzaq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract zzar(JJLcom/google/android/gms/internal/ads/zzsw;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation
.end method

.method protected zzas(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzat()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzr:F

    return v0
.end method

.method protected zzau(Lcom/google/android/gms/internal/ads/zzhn;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzav()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzte;->zzd:J

    return-wide v0
.end method

.method protected final zzaw()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzte;->zzc:J

    return-wide v0
.end method

.method protected final zzay()Lcom/google/android/gms/internal/ads/zzlt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzo:Lcom/google/android/gms/internal/ads/zzlt;

    return-object v0
.end method

.method protected final zzaz()Lcom/google/android/gms/internal/ads/zzsw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzt:Lcom/google/android/gms/internal/ads/zzsw;

    return-object v0
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzu(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzlt;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzo:Lcom/google/android/gms/internal/ads/zzlt;

    :cond_0
    return-void
.end method

.method protected zzx()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztg;->zzaS(Lcom/google/android/gms/internal/ads/zzte;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaK()Z

    return-void
.end method

.method protected zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zza:Lcom/google/android/gms/internal/ads/zzhy;

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

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzaa:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzab:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzO:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzh:Lcom/google/android/gms/internal/ads/zzhn;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzP:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrm;->zzb()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaJ()Z

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzad:Lcom/google/android/gms/internal/ads/zzte;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzac:Z

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method
