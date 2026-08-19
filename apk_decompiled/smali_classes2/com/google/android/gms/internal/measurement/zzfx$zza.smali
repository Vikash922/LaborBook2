.class public final Lcom/google/android/gms/internal/measurement/zzfx$zza;
.super Lcom/google/android/gms/internal/measurement/zzlc;
.source "com.google.android.gms:play-services-measurement@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;,
        Lcom/google/android/gms/internal/measurement/zzfx$zza$zzc;,
        Lcom/google/android/gms/internal/measurement/zzfx$zza$zzf;,
        Lcom/google/android/gms/internal/measurement/zzfx$zza$zza;,
        Lcom/google/android/gms/internal/measurement/zzfx$zza$zzd;,
        Lcom/google/android/gms/internal/measurement/zzfx$zza$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzfx$zza;",
        "Lcom/google/android/gms/internal/measurement/zzfx$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza;",
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
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfx$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfx$zza;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfx$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzll;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzll;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/measurement/zzfx$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzfx$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfw;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 18
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfx$zza;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 16
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

    .line 8
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    return-object p1

    .line 5
    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-class v2, Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;

    const-string v3, "zzg"

    const-class v4, Lcom/google/android/gms/internal/measurement/zzfx$zza$zzc;

    const-string v5, "zzh"

    const-class v6, Lcom/google/android/gms/internal/measurement/zzfx$zza$zzf;

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-class v9, Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string p2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u1007\u0000\u0005\u001b"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfx$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfx$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfy;)V

    return-object p1

    .line 3
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfx$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfx$zza;-><init>()V

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

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzf;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzc;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zza$zzb;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzi:Z

    return v0
.end method

.method public final zzh()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
