.class final Lcom/google/android/gms/internal/ads/zzwe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuw;
.implements Lcom/google/android/gms/internal/ads/zzadf;
.implements Lcom/google/android/gms/internal/ads/zzzk;
.implements Lcom/google/android/gms/internal/ads/zzzo;
.implements Lcom/google/android/gms/internal/ads/zzwp;


# static fields
.field private static final zzb:Ljava/util/Map;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzz;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzaeb;

.field private zzB:J

.field private zzC:Z

.field private zzD:I

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:I

.field private zzI:Z

.field private zzJ:J

.field private zzK:J

.field private zzL:Z

.field private zzM:I

.field private zzN:Z

.field private zzO:Z

.field private final zzP:Lcom/google/android/gms/internal/ads/zzze;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Lcom/google/android/gms/internal/ads/zzge;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzry;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzvi;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzrt;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzwa;

.field private final zzj:J

.field private final zzk:J

.field private final zzl:Lcom/google/android/gms/internal/ads/zzzs;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzvt;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzdj;

.field private final zzo:Ljava/lang/Runnable;

.field private final zzp:Ljava/lang/Runnable;

.field private final zzq:Landroid/os/Handler;

.field private zzr:Lcom/google/android/gms/internal/ads/zzuv;

.field private zzs:Lcom/google/android/gms/internal/ads/zzagc;

.field private zzt:[Lcom/google/android/gms/internal/ads/zzwr;

.field private zzu:[Lcom/google/android/gms/internal/ads/zzwc;

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzwd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwe;->zzb:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v1, "icy"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwe;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzrt;Lcom/google/android/gms/internal/ads/zzzi;Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzwa;Lcom/google/android/gms/internal/ads/zzze;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzz;JLcom/google/android/gms/internal/ads/zzaaa;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzd:Landroid/net/Uri;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zze:Lcom/google/android/gms/internal/ads/zzge;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzf:Lcom/google/android/gms/internal/ads/zzry;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzg:Lcom/google/android/gms/internal/ads/zzvi;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzP:Lcom/google/android/gms/internal/ads/zzze;

    move v1, p11

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzj:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzs;

    const-string v2, "ProgressiveMediaPeriod"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzm:Lcom/google/android/gms/internal/ads/zzvt;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzk:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdj;-><init>(Lcom/google/android/gms/internal/ads/zzdg;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzn:Lcom/google/android/gms/internal/ads/zzdj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvv;-><init>(Lcom/google/android/gms/internal/ads/zzwe;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzo:Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Lcom/google/android/gms/internal/ads/zzwe;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzp:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzwc;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzu:[Lcom/google/android/gms/internal/ads/zzwc;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzwr;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzD:I

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/ads/zzwe;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzuv;->zzj(Lcom/google/android/gms/internal/ads/zzwu;)V

    :cond_0
    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/ads/zzwe;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzV()V

    return-void
.end method

.method public static synthetic zzC(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzs:Lcom/google/android/gms/internal/ads/zzagc;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaea;

    const-wide/16 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(JJ)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzI:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzC:Z

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    :goto_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzD:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    .line 4
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzwa;->zza(JLcom/google/android/gms/internal/ads/zzaeb;Z)V

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzV()V

    return-void
.end method

.method public static synthetic zzD(Lcom/google/android/gms/internal/ads/zzwe;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzI:Z

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzagc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzs:Lcom/google/android/gms/internal/ads/zzagc;

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzwe;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvu;-><init>(Lcom/google/android/gms/internal/ads/zzwe;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzR()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzS(Z)J
    .locals 6

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwd;->zzc:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    aget-object v3, v3, v0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwr;->zzh()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private final zzT(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzu:[Lcom/google/android/gms/internal/ads/zzwc;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzwc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 3
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzv:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwc;->zza:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzP:Lcom/google/android/gms/internal/ads/zzze;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzf:Lcom/google/android/gms/internal/ads/zzry;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwr;

    .line 5
    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzry;

    .line 6
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrt;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwr;-><init>(Lcom/google/android/gms/internal/ads/zzze;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzrt;)V

    .line 7
    invoke-virtual {v4, p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzv(Lcom/google/android/gms/internal/ads/zzwp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzu:[Lcom/google/android/gms/internal/ads/zzwc;

    add-int/lit8 v2, v0, 0x1

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzwc;

    .line 9
    aput-object p1, v1, v0

    .line 10
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzwc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzu:[Lcom/google/android/gms/internal/ads/zzwc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 11
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwr;

    .line 12
    aput-object v4, p1, v0

    .line 13
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    return-object v4
.end method

.method private final zzU()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final zzV()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzO:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzv:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzi()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzn:Lcom/google/android/gms/internal/ads/zzdj;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 4
    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzbm;

    new-array v3, v0, [Z

    move v4, v2

    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-ge v4, v0, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 5
    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzwr;->zzi()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v7

    .line 8
    :goto_3
    aput-boolean v11, v3, v4

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzx:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzx:Z

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzi(Ljava/lang/String;)Z

    move-result v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzk:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_4

    if-ne v0, v7, :cond_4

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzy:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzs:Lcom/google/android/gms/internal/ads/zzagc;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzu:[Lcom/google/android/gms/internal/ads/zzwc;

    .line 10
    aget-object v11, v11, v4

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzwc;->zzb:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    if-nez v11, :cond_6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzav;

    new-array v12, v7, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v9, v12, v2

    .line 11
    invoke-direct {v11, v5, v6, v12}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    goto :goto_5

    .line 16
    :cond_6
    new-array v5, v7, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v9, v5, v2

    .line 12
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v11

    .line 11
    :goto_5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzz;->zzh:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzz;->zzi:I

    if-ne v5, v6, :cond_8

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzagc;->zza:I

    if-eq v5, v6, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzf:Lcom/google/android/gms/internal/ads/zzry;

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzry;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v5

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzc(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbm;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzz;

    aput-object v5, v7, v2

    invoke-direct {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzbm;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzz;)V

    aput-object v6, v1, v4

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzu:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 12
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwd;

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzxd;-><init>([Lcom/google/android/gms/internal/ads/zzbm;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzxd;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzy:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzaeb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzC:Z

    .line 19
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzwa;->zza(JLcom/google/android/gms/internal/ads/zzaeb;Z)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzuv;->zzl(Lcom/google/android/gms/internal/ads/zzuw;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final zzW(I)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwd;->zzd:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzg:Lcom/google/android/gms/internal/ads/zzvi;

    .line 5
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzay;->zzb(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzuu;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 8
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzvi;->zzd(Lcom/google/android/gms/internal/ads/zzuu;)V

    const/4 v0, 0x1

    .line 9
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final zzX(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzL:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwd;->zzb:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzy(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzL:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzM:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 4
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzq(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuv;->zzj(Lcom/google/android/gms/internal/ads/zzwu;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzY()V
    .locals 10

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzd:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zze:Lcom/google/android/gms/internal/ads/zzge;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzvz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzm:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzn:Lcom/google/android/gms/internal/ads/zzdj;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzvz;-><init>(Lcom/google/android/gms/internal/ads/zzwe;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzdj;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzZ()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaeb;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzaeb;->zzg(J)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzadz;->zza:Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:J

    .line 4
    invoke-static {v7, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzvz;->zzf(Lcom/google/android/gms/internal/ads/zzvz;JJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 5
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    .line 6
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzwr;->zzu(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzR()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzM:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzD:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzzi;->zza(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/internal/ads/zzzk;I)J

    return-void
.end method

.method private final zzZ()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzZ()Z

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

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzwe;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzj:J

    return-wide v0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzwe;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    return-wide v0
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/ads/zzwe;Z)J
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zzS(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzwe;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzt()Lcom/google/android/gms/internal/ads/zzz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwe;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    return-object v0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzwe;)Lcom/google/android/gms/internal/ads/zzagc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzs:Lcom/google/android/gms/internal/ads/zzagc;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzwe;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzp:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzz()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwe;->zzb:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final zzG()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzH()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzD:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzi;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzi(I)V

    return-void
.end method

.method final zzI(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzn()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzH()V

    return-void
.end method

.method public final bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzzn;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvz;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zze(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v2

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzup;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzd(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzh()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzi()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzg()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzup;-><init>(JLcom/google/android/gms/internal/ads/zzgj;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzc(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzuu;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzg:Lcom/google/android/gms/internal/ads/zzvi;

    .line 7
    invoke-virtual {v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzvi;->zze(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzwr;->zzq(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzuv;->zzj(Lcom/google/android/gms/internal/ads/zzwu;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzzn;JJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvz;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    if-eqz v2, :cond_1

    .line 2
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzwe;->zzS(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzC:Z

    .line 3
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzwa;->zza(JLcom/google/android/gms/internal/ads/zzaeb;Z)V

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zze(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v2

    .line 5
    new-instance v14, Lcom/google/android/gms/internal/ads/zzup;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzd(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzh()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzi()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzg()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v2, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzup;-><init>(JLcom/google/android/gms/internal/ads/zzgj;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzg:Lcom/google/android/gms/internal/ads/zzvi;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvz;->zzc(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuu;

    .line 8
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 9
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzvi;->zzf(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzuv;->zzj(Lcom/google/android/gms/internal/ads/zzwu;)V

    return-void
.end method

.method public final bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzzn;JJI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvz;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zze(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v3

    if-nez v1, :cond_0

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzup;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzd(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object v7

    move-object v4, v3

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzup;-><init>(JLcom/google/android/gms/internal/ads/zzgj;J)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzup;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v9

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzd(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zzh()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zzi()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zzg()J

    move-result-wide v18

    move-object v8, v4

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzup;-><init>(JLcom/google/android/gms/internal/ads/zzgj;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v4

    .line 3
    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzg:Lcom/google/android/gms/internal/ads/zzvi;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzc(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    new-instance v2, Lcom/google/android/gms/internal/ads/zzuu;

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 7
    invoke-virtual {v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzvi;->zzh(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V

    return-void
.end method

.method public final zzM()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwr;->zzp()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzm:Lcom/google/android/gms/internal/ads/zzvt;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvt;->zze()V

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzo:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzO()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwr;->zzo()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzzs;->zzj(Lcom/google/android/gms/internal/ads/zzzo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzO:Z

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzaeb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzq:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzQ(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzaa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzy(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(JLcom/google/android/gms/internal/ads/zzma;)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaeb;->zzh()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 3
    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaeb;->zzg(J)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzadz;->zza:Lcom/google/android/gms/internal/ads/zzaec;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzadz;->zzb:Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzma;->zzc:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzma;->zzd:J

    cmp-long v8, v8, v5

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    move-wide v8, v5

    :cond_2
    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    .line 4
    sget v7, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    sub-long v12, v1, v8

    xor-long v7, v1, v8

    xor-long v14, v1, v12

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzma;->zzd:J

    add-long v16, v1, v5

    xor-long v18, v1, v16

    xor-long v5, v5, v16

    and-long/2addr v7, v14

    const-wide/16 v14, 0x0

    cmp-long v3, v7, v14

    if-gez v3, :cond_3

    const-wide/high16 v12, -0x8000000000000000L

    :cond_3
    and-long v5, v18, v5

    cmp-long v3, v5, v14

    if-gez v3, :cond_4

    const-wide v16, 0x7fffffffffffffffL

    :cond_4
    cmp-long v3, v12, v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v3, :cond_5

    cmp-long v3, v10, v16

    if-gtz v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v6

    :goto_0
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    cmp-long v4, v12, v7

    if-gtz v4, :cond_6

    cmp-long v4, v7, v16

    if-gtz v4, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    sub-long v3, v10, v1

    sub-long v1, v7, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_7

    goto :goto_2

    :cond_7
    return-wide v7

    :cond_8
    if-eqz v3, :cond_9

    :goto_2
    move-wide v1, v10

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    move-wide v1, v7

    :goto_3
    return-wide v1

    :cond_a
    return-wide v12
.end method

.method public final zzb()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzx:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 2
    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 3
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzwd;->zzb:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzwd;->zzc:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    aget-object v9, v9, v6

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwr;->zzx()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 5
    aget-object v9, v9, v6

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwr;->zzh()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzwe;->zzS(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzc()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzR()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzM:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zze(J)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwd;->zzb:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaeb;->zzh()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzZ()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    return-wide p1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzD:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzs;->zzl()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 4
    array-length v4, v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 5
    aget-object v6, v6, v5

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzwr;->zzb()I

    move-result v7

    if-nez v7, :cond_3

    cmp-long v7, v2, p1

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzy:Z

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzwr;->zza()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzwr;->zzz(I)Z

    move-result v6

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v6, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzwr;->zzA(JZ)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_5

    .line 9
    aget-boolean v6, v0, v5

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzx:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzL:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzK:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzl()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 10
    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzk()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 12
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzg()V

    goto :goto_6

    .line 13
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 14
    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 15
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzwr;->zzq(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-wide p1
.end method

.method public final zzf([Lcom/google/android/gms/internal/ads/zzyp;[Z[Lcom/google/android/gms/internal/ads/zzws;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwd;->zzc:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    .line 6
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzwb;->zzc(Lcom/google/android/gms/internal/ads/zzwb;)I

    move-result v5

    .line 7
    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    .line 8
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 9
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzE:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    .line 30
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzy:Z

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_2
    move v2, v3

    .line 10
    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    .line 11
    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyp;->zzd()I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v3

    .line 12
    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 13
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzyp;->zza(I)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyp;->zzg()Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v6

    .line 14
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zzbm;)I

    move-result v6

    .line 15
    aget-boolean v7, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    .line 16
    aput-boolean v4, v0, v6

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    .line 17
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyp;->zzf()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzu:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    new-instance v5, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(Lcom/google/android/gms/internal/ads/zzwe;I)V

    .line 18
    aput-object v5, p3, v2

    .line 19
    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 20
    aget-object p2, p2, v6

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzb()I

    move-result v5

    if-eqz v5, :cond_7

    .line 22
    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzA(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzL:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzG:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzs;->zzl()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 23
    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzwr;->zzk()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 25
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzs;->zzg()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 26
    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 27
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzwr;->zzq(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 28
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzwe;->zze(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 29
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 30
    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 25
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzE:Z

    return-wide p5
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzxd;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    return-object v0
.end method

.method public final zzh(JZ)V
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzy:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzU()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzZ()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzz:Lcom/google/android/gms/internal/ads/zzwd;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzwd;->zzc:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 4
    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzwr;->zzj(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final zzi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzH()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method final zzj(ILcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzaa()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    .line 3
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzwr;->zze(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zzX(I)V

    :cond_1
    return p2
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzuv;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzr:Lcom/google/android/gms/internal/ads/zzuv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzn:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdj;->zze()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzY()V

    return-void
.end method

.method final zzl(IJ)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzaa()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    .line 3
    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzwr;->zzc(JZ)I

    move-result p2

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzw(I)V

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zzX(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final zzm(J)V
    .locals 0

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzku;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzN:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzs;->zzk()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzL:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzH:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzn:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zze()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzs;->zzl()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzY()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzl:Lcom/google/android/gms/internal/ads/zzzs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzn:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzzn;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzzl;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvz;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zze(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v3

    .line 3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzup;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzd(Lcom/google/android/gms/internal/ads/zzvz;)Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zzh()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zzi()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zzg()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v3, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzup;-><init>(JLcom/google/android/gms/internal/ads/zzgj;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzc(Lcom/google/android/gms/internal/ads/zzvz;)J

    .line 5
    sget v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzaz;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    .line 6
    instance-of v4, v1, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzgu;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzzq;

    if-nez v4, :cond_2

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzgf;

    if-eqz v7, :cond_0

    .line 7
    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgf;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgf;->zza:I

    const/16 v8, 0x7d8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v7, 0x1388

    .line 9
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v5

    :goto_2
    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzzs;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    goto :goto_7

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzR()I

    move-result v4

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzM:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v4, v9, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    move v9, v11

    :goto_3
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzI:Z

    if-nez v12, :cond_8

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzA:Lcom/google/android/gms/internal/ads/zzaeb;

    if-eqz v12, :cond_5

    .line 11
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzw:Z

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwe;->zzaa()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzL:Z

    sget-object v4, Lcom/google/android/gms/internal/ads/zzzs;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    goto :goto_7

    :cond_6
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzF:Z

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzJ:J

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzM:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzt:[Lcom/google/android/gms/internal/ads/zzwr;

    .line 12
    array-length v10, v6

    move v12, v11

    :goto_4
    if-ge v12, v10, :cond_7

    aget-object v13, v6, v12

    .line 13
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzwr;->zzq(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {v2, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzvz;->zzf(Lcom/google/android/gms/internal/ads/zzvz;JJ)V

    goto :goto_6

    .line 11
    :cond_8
    :goto_5
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzM:I

    :goto_6
    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzzs;->zzb(ZJ)Lcom/google/android/gms/internal/ads/zzzl;

    move-result-object v4

    .line 7
    :goto_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzl;->zzc()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzg:Lcom/google/android/gms/internal/ads/zzvi;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzc(Lcom/google/android/gms/internal/ads/zzvz;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzwe;->zzB:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v18

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v20

    new-instance v8, Lcom/google/android/gms/internal/ads/zzuu;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v21}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 16
    invoke-virtual {v7, v3, v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzvi;->zzg(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V

    if-nez v5, :cond_9

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvz;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)J

    :cond_9
    return-object v4
.end method

.method final zzv()Lcom/google/android/gms/internal/ads/zzaei;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwc;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwe;->zzT(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    return-object v0
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzwc;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzwe;->zzT(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    return-object p1
.end method
