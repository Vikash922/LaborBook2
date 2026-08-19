.class public final Lcom/google/android/gms/internal/measurement/zzgn$zzl;
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
    name = "zzl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgn$zzl$zzb;,
        Lcom/google/android/gms/internal/measurement/zzgn$zzl$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzl;",
        "Lcom/google/android/gms/internal/measurement/zzgn$zzl$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzl;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzf:I

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzgn$zzl$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcc()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzl$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn$zzl;Lcom/google/android/gms/internal/measurement/zzgn$zzg;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzll;

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Lcom/google/android/gms/internal/measurement/zzll;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzll;

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzgn$zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    return-object p1

    .line 5
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzl$zzb;->zzb()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object p3

    const-string v0, "zzg"

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgn$zzg;

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 7
    const-string p2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzl;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzl$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzl$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhc;)V

    return-object p1

    .line 3
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgn$zzl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzl;-><init>()V

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
