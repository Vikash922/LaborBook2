.class public final Lcom/google/android/gms/internal/measurement/zzgn$zzf;
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
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzf;",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;-><init>()V

    .line 63
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    .line 64
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzl()V

    .line 42
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;ILcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 0

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzl()V

    .line 52
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzll;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;J)V
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    .line 56
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzi:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Lcom/google/android/gms/internal/measurement/zzgn$zzh;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzl()V

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/Iterable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzl()V

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzji;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzf;J)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    .line 60
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzh:J

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcc()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzgn$zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    return-object v0
.end method

.method private final zzl()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    .line 71
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Lcom/google/android/gms/internal/measurement/zzll;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzj:I

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgm;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    return-object p1

    .line 10
    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-class v2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 11
    const-string p2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzgv;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;-><init>()V

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

.method public final zzb()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzi:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzh:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Z
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
