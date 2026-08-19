.class public final Lcom/google/android/gms/internal/measurement/zzgn$zzh;
.super Lcom/google/android/gms/internal/measurement/zzlc;
.source "com.google.android.gms:play-services-measurement@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzgn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzh;",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:F

.field private zzj:D

.field private zzk:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;-><init>()V

    .line 74
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 75
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzf:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzj:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;D)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    .line 57
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzj:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;J)V
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    .line 61
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;Lcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzo()V

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;Ljava/lang/Iterable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzo()V

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzji;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    .line 66
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 2

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzh;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 52
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcc()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzgn$zzh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    return-object v0
.end method

.method private final zzo()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Lcom/google/android/gms/internal/measurement/zzll;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzj:D

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgm;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    return-object p1

    .line 9
    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzh"

    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v6, "zzk"

    const-class v7, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 10
    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzgx;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi:F

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzh;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 1

    .line 89
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzn()Z
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
