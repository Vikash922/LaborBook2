.class public final Lcom/google/android/gms/internal/measurement/zzgn$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzc;-><init>()V

    .line 51
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    .line 52
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcc()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzgn$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzj:Z

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzgn$zzc;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 32
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzf:Z

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 36
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzl:Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 40
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzg:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 44
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzh:Z

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzgn$zzc;Z)V
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zze:I

    .line 48
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzi:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgm;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 19
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 17
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

    .line 9
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    return-object p1

    .line 6
    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzh"

    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v6, "zzk"

    const-string v7, "zzl"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 7
    const-string p2, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzgs;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzc;-><init>()V

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

.method public final zzd()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzk:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzj:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzf:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzl:Z

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzg:Z

    return v0
.end method

.method public final zzi()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzh:Z

    return v0
.end method

.method public final zzj()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zzi:Z

    return v0
.end method
