.class public final Lcom/google/android/gms/internal/ads/zzfgu;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfgu;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzgzo;


# instance fields
.field private zzA:I

.field private zzB:Ljava/lang/String;

.field private zzC:Ljava/lang/String;

.field private zzD:Lcom/google/android/gms/internal/ads/zzgyg;

.field private zzE:I

.field private zzF:I

.field private zzG:I

.field private zzH:J

.field private zzI:I

.field private zzJ:Ljava/lang/String;

.field private zzK:Ljava/lang/String;

.field private zzL:Ljava/lang/String;

.field private zzM:Ljava/lang/String;

.field private zzN:Ljava/lang/String;

.field private zzO:Ljava/lang/String;

.field private zzP:I

.field private zzQ:I

.field private zzR:Ljava/lang/String;

.field private zzS:I

.field private zzT:Ljava/lang/String;

.field private zzU:Ljava/lang/String;

.field private zzV:Ljava/lang/String;

.field private zzW:Ljava/lang/String;

.field private zzX:Ljava/lang/String;

.field private zzY:Ljava/lang/String;

.field private zzZ:Ljava/lang/String;

.field private zzaa:Ljava/lang/String;

.field private zzab:Ljava/lang/String;

.field private zzac:J

.field private zzad:Ljava/lang/String;

.field private zzae:I

.field private zzaf:I

.field private zzag:I

.field private zzah:Lcom/google/android/gms/internal/ads/zzfib;

.field private zzai:I

.field private zzaj:Lcom/google/android/gms/internal/ads/zzfhv;

.field private zzak:Lcom/google/android/gms/internal/ads/zzfhc;

.field private zzal:Lcom/google/android/gms/internal/ads/zzfhi;

.field private zzam:Lcom/google/android/gms/internal/ads/zzfhf;

.field private zzan:Lcom/google/android/gms/internal/ads/zzfhy;

.field private zzao:Lcom/google/android/gms/internal/ads/zzfhp;

.field private zzap:Lcom/google/android/gms/internal/ads/zzfhm;

.field private zzaq:Lcom/google/android/gms/internal/ads/zzhbc;

.field private zzar:Ljava/lang/String;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzgyd;

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:I

.field private zzu:Ljava/lang/String;

.field private zzv:Ljava/lang/String;

.field private zzw:Ljava/lang/String;

.field private zzx:Ljava/lang/String;

.field private zzy:Ljava/lang/String;

.field private zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfgu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgu;->zzbG()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzj:Lcom/google/android/gms/internal/ads/zzgyd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzv:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzx:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzB:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzC:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgu;->zzbI()Lcom/google/android/gms/internal/ads/zzgyg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzD:Lcom/google/android/gms/internal/ads/zzgyg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzN:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzO:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzR:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzU:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzV:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzX:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzY:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzaa:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzab:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzad:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzar:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfgr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzaZ()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgr;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/ads/zzfgu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgu;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzD:Lcom/google/android/gms/internal/ads/zzgyg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyg;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbJ(Lcom/google/android/gms/internal/ads/zzgyg;)Lcom/google/android/gms/internal/ads/zzgyg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzD:Lcom/google/android/gms/internal/ads/zzgyg;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzD:Lcom/google/android/gms/internal/ads/zzgyg;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaQ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzx:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzJ:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzab:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzfgu;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzH:J

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzK:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzfgu;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzl:J

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzW:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzX:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzfgu;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzG:I

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzz:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzY:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzfgu;Lcom/google/android/gms/internal/ads/zzfgs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgs;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzai:I

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzu:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzaa:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzfgu;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzm:J

    return-void
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/ads/zzfgu;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzk:Z

    return-void
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/ads/zzfgu;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzA:I

    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzZ:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/ads/zzfgu;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzI:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/ads/zzfgu;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzd:I

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/ads/zzfgu;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzE:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/ads/zzfgu;I)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zzp:I

    return-void
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 65

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgxu;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzfgu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    .line 4
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 8
    :cond_2
    throw v2

    .line 2
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgu;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgr;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzfgr;-><init>(Lcom/google/android/gms/internal/ads/zzfgt;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgu;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>()V

    return-object v0

    .line 2
    :cond_6
    const-string v1, "zzc"

    const-string v2, "zzd"

    const-string v3, "zzk"

    const-string v4, "zzl"

    const-string v5, "zzp"

    const-string v6, "zzu"

    const-string v7, "zzx"

    const-string v8, "zzz"

    const-string v9, "zzA"

    const-string v10, "zzE"

    const-string v11, "zzG"

    const-string v12, "zzH"

    const-string v13, "zzI"

    const-string v14, "zzJ"

    const-string v15, "zzK"

    const-string v16, "zzW"

    const-string v17, "zzX"

    const-string v18, "zzY"

    const-string v19, "zzZ"

    const-string v20, "zzaa"

    const-string v21, "zzab"

    const-string v22, "zzv"

    const-string v23, "zzw"

    const-string v24, "zzB"

    const-string v25, "zzC"

    const-string v26, "zzD"

    const-string v27, "zzL"

    const-string v28, "zzM"

    const-string v29, "zzU"

    const-string v30, "zzac"

    const-string v31, "zzf"

    const-string v32, "zzg"

    const-string v33, "zzh"

    const-string v34, "zzi"

    const-string v35, "zzm"

    const-string v36, "zzn"

    const-string v37, "zzo"

    const-string v38, "zzj"

    const-string v39, "zzaf"

    const-string v40, "zzag"

    const-string v41, "zze"

    const-string v42, "zzaj"

    const-string v43, "zzak"

    const-string v44, "zzP"

    const-string v45, "zzR"

    const-string v46, "zzO"

    const-string v47, "zzN"

    const-string v48, "zzai"

    const-string v49, "zzQ"

    const-string v50, "zzS"

    const-string v51, "zzT"

    const-string v52, "zzy"

    const-string v53, "zzal"

    const-string v54, "zzF"

    const-string v55, "zzam"

    const-string v56, "zzad"

    const-string v57, "zzae"

    const-string v58, "zzah"

    const-string v59, "zzan"

    const-string v60, "zzao"

    const-string v61, "zzV"

    const-string v62, "zzap"

    const-string v63, "zzaq"

    const-string v64, "zzar"

    filled-new-array/range {v1 .. v64}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgu;

    const-string v2, "\u0004?\u0000\u0001\u0001??\u0000\u0002\u0000\u0001\u000c\u0002\u0007\u0003\u0002\u0004\u000c\u0005\u0208\u0006\u0208\u0007\u0208\u0008\u0004\t\u000c\n\u0004\u000b\u0002\u000c\u000c\r\u0208\u000e\u0208\u000f\u0208\u0010\u0208\u0011\u0208\u0012\u0208\u0013\u0208\u0014\u0208\u0015\u0208\u0016\u0208\u0017\u0208\u0018\u0208\u0019%\u001a\u0208\u001b\u0208\u001c\u0208\u001d\u0002\u001e\u0208\u001f\u0002 \u0002!\u0002\"\u0002#\u0002$\u0002%,&\u000c\'\u000c(\u000c)\u1009\u0001*\u1009\u0002+\u0004,\u0208-\u0208.\u0208/\u000c0\u00041\u00042\u02083\u02084\u1009\u00035\u000c6\u1009\u00047\u02088\u00049\u1009\u0000:\u1009\u0005;\u1009\u0006<\u0208=\u1009\u0007>\u1009\u0008?\u0208"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfgu;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
