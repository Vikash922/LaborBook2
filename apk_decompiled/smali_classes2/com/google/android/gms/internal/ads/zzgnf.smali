.class public final Lcom/google/android/gms/internal/ads/zzgnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Ljava/lang/Class;

.field private zzb:Ljava/util/List;

.field private zzc:Lcom/google/android/gms/internal/ads/zzglg;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgni;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzb:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zza:Ljava/lang/Class;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;Z)Lcom/google/android/gms/internal/ads/zzgnf;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzb:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzk()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgng;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgdj;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result v4

    const/4 v7, 0x0

    move-object v2, v0

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgng;-><init>(Lcom/google/android/gms/internal/ads/zzgdj;ILcom/google/android/gms/internal/ads/zzgdh;ZLcom/google/android/gms/internal/ads/zzgni;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzb:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzc:Lcom/google/android/gms/internal/ads/zzglg;

    if-nez p1, :cond_0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzc:Lcom/google/android/gms/internal/ads/zzglg;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "you cannot set two primary primitives"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "only ENABLED key is allowed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addEntry cannot be called after build"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;)Lcom/google/android/gms/internal/ads/zzgnf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgnf;->zzd(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;Z)Lcom/google/android/gms/internal/ads/zzgnf;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;)Lcom/google/android/gms/internal/ads/zzgnf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgnf;->zzd(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;Z)Lcom/google/android/gms/internal/ads/zzgnf;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgnj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzb:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgnh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzc:Lcom/google/android/gms/internal/ads/zzglg;

    .line 2
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgnh;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzglg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zza:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgnj;-><init>(Lcom/google/android/gms/internal/ads/zzglh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgni;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgnf;->zzb:Ljava/util/List;

    return-object v1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
