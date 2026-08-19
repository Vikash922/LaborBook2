.class public final Lcom/google/android/gms/internal/ads/zzhdj;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhdj;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzgzo;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhck;

.field private zzg:Lcom/google/android/gms/internal/ads/zzhco;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzgyd;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzgyh;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhdj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zza:Lcom/google/android/gms/internal/ads/zzhdj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhdj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzm:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdj;->zzbG()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzi:Lcom/google/android/gms/internal/ads/zzgyd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzj:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbK()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzl:Lcom/google/android/gms/internal/ads/zzgyh;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzhdi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zza:Lcom/google/android/gms/internal/ads/zzhdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzaZ()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhdi;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/ads/zzhdj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zza:Lcom/google/android/gms/internal/ads/zzhdj;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzhdj;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzl:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbL(Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzl:Lcom/google/android/gms/internal/ads/zzgyh;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzl:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzhdj;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzd:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzhdj;Lcom/google/android/gms/internal/ads/zzhck;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzf:Lcom/google/android/gms/internal/ads/zzhck;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzhdj;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzhdj;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzk:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:I

    return-void
.end method


# virtual methods
.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzl:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->size()I

    move-result v0

    return v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxu;->ordinal()I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    throw p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhdj;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhdj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhdj;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzhdj;->zza:Lcom/google/android/gms/internal/ads/zzhdj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhdj;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 2
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhdj;->zza:Lcom/google/android/gms/internal/ads/zzhdj;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhdi;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhdi;-><init>(Lcom/google/android/gms/internal/ads/zzhee;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhdj;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhdj;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v8, "zzk"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzgyb;

    const-string v10, "zzl"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhdj;->zza:Lcom/google/android/gms/internal/ads/zzhdj;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhdj;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 4
    :goto_1
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzm:B

    return-object p3

    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzm:B

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdj;->zze:Ljava/lang/String;

    return-object v0
.end method
