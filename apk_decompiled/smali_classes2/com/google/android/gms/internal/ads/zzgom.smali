.class public final Lcom/google/android/gms/internal/ads/zzgom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgom;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgom;->zza:Lcom/google/android/gms/internal/ads/zzgom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgom;->zza:Lcom/google/android/gms/internal/ads/zzgom;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzd(Lcom/google/android/gms/internal/ads/zzgnk;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgoj;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzgoj;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzglh;Lcom/google/android/gms/internal/ads/zzglq;Lcom/google/android/gms/internal/ads/zzgdl;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzglh;->zze()Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmt;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzglh;->zza()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzglh;->zzd(I)Lcom/google/android/gms/internal/ads/zzglg;

    move-result-object v2

    .line 5
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Lcom/google/android/gms/internal/ads/zzglg;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgoj;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzglg;->zzb()Lcom/google/android/gms/internal/ads/zzgdh;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzgpb;

    if-eqz v4, :cond_0

    .line 7
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgpb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpb;->zzd()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzglm;

    if-eqz v4, :cond_1

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzglm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzglm;->zzc()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v2

    .line 6
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmt;->zza(Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgmt;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgdh;->zza()Lcom/google/android/gms/internal/ads/zzgdv;

    move-result-object p3

    .line 11
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get output prefix for key of class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_2
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Lcom/google/android/gms/internal/ads/zzglg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgok;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgmt;->zzb()Lcom/google/android/gms/internal/ads/zzgmw;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/internal/ads/zzgok;-><init>(Lcom/google/android/gms/internal/ads/zzgmw;Lcom/google/android/gms/internal/ads/zzgoj;Lcom/google/android/gms/internal/ads/zzgol;)V

    return-object p2

    .line 1
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "no primary in primitive set"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
