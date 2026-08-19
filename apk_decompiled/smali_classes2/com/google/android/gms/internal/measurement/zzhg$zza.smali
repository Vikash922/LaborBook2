.class public final Lcom/google/android/gms/internal/measurement/zzhg$zza;
.super Lcom/google/android/gms/internal/measurement/zzlc;
.source "com.google.android.gms:play-services-measurement@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzhg$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzhg$zza;",
        "Lcom/google/android/gms/internal/measurement/zzhg$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzhg$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzhg$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhg$zza;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/measurement/zzhg$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zze:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzhg$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzhg$zza;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zze:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->size()I

    move-result v0

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhi;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/measurement/zzhg$zza;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

    return-object p1

    .line 6
    :pswitch_4
    const-string p1, "zze"

    const-class p2, Lcom/google/android/gms/internal/measurement/zzhg$zzb;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 7
    const-string p2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhg$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhg$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhg$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhj;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhg$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhg$zza;-><init>()V

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

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzhg$zzb;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zze:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method
