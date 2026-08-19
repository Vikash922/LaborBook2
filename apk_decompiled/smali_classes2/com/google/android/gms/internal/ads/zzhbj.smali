.class public final Lcom/google/android/gms/internal/ads/zzhbj;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhbj;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzgzo;


# instance fields
.field private zzc:Lcom/google/android/gms/internal/ads/zzgyh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhbj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbj;->zzbK()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zzc:Lcom/google/android/gms/internal/ads/zzgyh;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhbi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzaZ()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbi;

    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzhbj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbj;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzhbj;Lcom/google/android/gms/internal/ads/zzhbh;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zzc:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbL(Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zzc:Lcom/google/android/gms/internal/ads/zzgyh;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhbj;->zzc:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxu;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhbj;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhbj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhbj;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhbj;->zzb:Lcom/google/android/gms/internal/ads/zzgzo;

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

    .line 8
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbj;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhbi;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhbi;-><init>(Lcom/google/android/gms/internal/ads/zzhbk;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhbj;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhbj;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string p1, "zzc"

    const-class p2, Lcom/google/android/gms/internal/ads/zzhbh;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhbj;->zza:Lcom/google/android/gms/internal/ads/zzhbj;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhbj;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
