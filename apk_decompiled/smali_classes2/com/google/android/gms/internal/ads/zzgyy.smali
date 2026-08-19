.class final Lcom/google/android/gms/internal/ads/zzgyy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhaa;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgze;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgyw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyy;->zza:Lcom/google/android/gms/internal/ads/zzgze;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyx;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzgze;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxo;->zza()Lcom/google/android/gms/internal/ads/zzgxo;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgyy;->zza:Lcom/google/android/gms/internal/ads/zzgze;

    sget v3, Lcom/google/android/gms/internal/ads/zzgzq;->zza:I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>([Lcom/google/android/gms/internal/ads/zzgze;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyi;->zzb:[B

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgze;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyy;->zzb:Lcom/google/android/gms/internal/ads/zzgze;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzz;
    .locals 8

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhab;->zza:I

    const-class v0, Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzgzq;->zza:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyy;->zzb:Lcom/google/android/gms/internal/ads/zzgze;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgzd;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/zzgzq;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzn;->zza()Lcom/google/android/gms/internal/ads/zzgzm;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyu;->zza()Lcom/google/android/gms/internal/ads/zzgyt;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhab;->zzm()Lcom/google/android/gms/internal/ads/zzhal;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgzd;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxi;->zza()Lcom/google/android/gms/internal/ads/zzgxg;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzc;->zza()Lcom/google/android/gms/internal/ads/zzgzb;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgzj;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzd;Lcom/google/android/gms/internal/ads/zzgzm;Lcom/google/android/gms/internal/ads/zzgyt;Lcom/google/android/gms/internal/ads/zzhal;Lcom/google/android/gms/internal/ads/zzgxg;Lcom/google/android/gms/internal/ads/zzgzb;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzgzq;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhab;->zzm()Lcom/google/android/gms/internal/ads/zzhal;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxi;->zza()Lcom/google/android/gms/internal/ads/zzgxg;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgzd;->zza()Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgzk;->zzc(Lcom/google/android/gms/internal/ads/zzhal;Lcom/google/android/gms/internal/ads/zzgxg;Lcom/google/android/gms/internal/ads/zzgzg;)Lcom/google/android/gms/internal/ads/zzgzk;

    move-result-object p1

    return-object p1
.end method
