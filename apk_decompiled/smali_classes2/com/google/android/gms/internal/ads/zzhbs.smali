.class public final Lcom/google/android/gms/internal/ads/zzhbs;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhbs;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzgzo;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyh;

.field private zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Ljava/lang/String;

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Z

.field private zzu:Lcom/google/android/gms/internal/ads/zzgyh;

.field private zzv:Z

.field private zzw:J

.field private zzx:Lcom/google/android/gms/internal/ads/zzgyd;

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzgyd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhbs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbs;->zza:Lcom/google/android/gms/internal/ads/zzhbs;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhbs;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbs;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbK()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbs;->zzg:Lcom/google/android/gms/internal/ads/zzgyh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbs;->zzl:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbs;->zzbK()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbs;->zzu:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbs;->zzbG()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbs;->zzx:Lcom/google/android/gms/internal/ads/zzgyd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbs;->zzbG()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbs;->zzz:Lcom/google/android/gms/internal/ads/zzgyd;

    return-void
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/ads/zzhbs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbs;->zza:Lcom/google/android/gms/internal/ads/zzhbs;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbs;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzhbs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbs;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhbs;->zza:Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbs;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbs;->zza:Lcom/google/android/gms/internal/ads/zzhbs;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbl;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhbl;-><init>(Lcom/google/android/gms/internal/ads/zzhee;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbs;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhbs;-><init>()V

    return-object v0

    .line 2
    :cond_6
    const-string v1, "zzc"

    const-string v2, "zzd"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhbr;->zza:Lcom/google/android/gms/internal/ads/zzgyb;

    const-string v4, "zze"

    const-string v5, "zzf"

    const-string v6, "zzg"

    const-string v7, "zzh"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhbp;->zza:Lcom/google/android/gms/internal/ads/zzgyb;

    const-string v9, "zzi"

    const-string v10, "zzj"

    const-string v11, "zzk"

    const-string v12, "zzl"

    const-string v13, "zzm"

    const-string v14, "zzn"

    const-string v15, "zzo"

    const-string v16, "zzp"

    const-string v17, "zzu"

    const-class v18, Lcom/google/android/gms/internal/ads/zzhbo;

    const-string v19, "zzv"

    const-string v20, "zzw"

    const-string v21, "zzx"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbf;->zza()Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object v22

    const-string v23, "zzy"

    const-string v24, "zzz"

    sget-object v25, Lcom/google/android/gms/internal/ads/zzhbq;->zza:Lcom/google/android/gms/internal/ads/zzgyb;

    filled-new-array/range {v1 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhbs;->zza:Lcom/google/android/gms/internal/ads/zzhbs;

    const-string v2, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u180c\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006\t\u1008\u0007\n\u1004\u0008\u000b\u1004\t\u000c\u1004\n\r\u1007\u000b\u000e\u001b\u000f\u1007\u000c\u0010\u1002\r\u0011\u082c\u0012\u1007\u000e\u0013\u082c"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhbs;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
