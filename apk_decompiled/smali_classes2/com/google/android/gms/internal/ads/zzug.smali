.class public abstract Lcom/google/android/gms/internal/ads/zzug;
.super Lcom/google/android/gms/internal/ads/zztx;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Ljava/util/HashMap;

.field private zzb:Landroid/os/Handler;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhe;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztx;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected abstract zzA(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzbl;)V
.end method

.method protected final zzB(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzva;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzud;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzud;-><init>(Lcom/google/android/gms/internal/ads/zzug;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzue;

    .line 3
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzue;-><init>(Lcom/google/android/gms/internal/ads/zzug;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzuf;

    invoke-direct {v3, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzuf;-><init>(Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzuz;Lcom/google/android/gms/internal/ads/zzue;)V

    .line 4
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/os/Handler;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v0, p1

    check-cast v0, Landroid/os/Handler;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzva;->zzh(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzvj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/os/Handler;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v0, p1

    check-cast v0, Landroid/os/Handler;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzva;->zzg(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzru;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zzc:Lcom/google/android/gms/internal/ads/zzhe;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztx;->zzb()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface {p2, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzva;->zzm(Lcom/google/android/gms/internal/ads/zzuz;Lcom/google/android/gms/internal/ads/zzhe;Lcom/google/android/gms/internal/ads/zzoz;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztx;->zzu()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzva;->zzi(Lcom/google/android/gms/internal/ads/zzuz;)V

    :cond_0
    return-void
.end method

.method protected final zzj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuf;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzuf;->zza:Lcom/google/android/gms/internal/ads/zzva;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzuf;->zzb:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzva;->zzi(Lcom/google/android/gms/internal/ads/zzuz;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuf;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzuf;->zza:Lcom/google/android/gms/internal/ads/zzva;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzuf;->zzb:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzva;->zzk(Lcom/google/android/gms/internal/ads/zzuz;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzn(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zzc:Lcom/google/android/gms/internal/ads/zzhe;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/os/Handler;

    return-void
.end method

.method protected zzq()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzuf;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzuf;->zza:Lcom/google/android/gms/internal/ads/zzva;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzuf;->zzb:Lcom/google/android/gms/internal/ads/zzuz;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzva;->zzp(Lcom/google/android/gms/internal/ads/zzuz;)V

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzuf;->zzc:Lcom/google/android/gms/internal/ads/zzue;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzva;->zzs(Lcom/google/android/gms/internal/ads/zzvj;)V

    .line 4
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzva;->zzr(Lcom/google/android/gms/internal/ads/zzru;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected zzw(Ljava/lang/Object;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected zzx(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzuy;)J
    .locals 0

    return-wide p2
.end method

.method protected zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuy;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzz()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuf;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzuf;->zza:Lcom/google/android/gms/internal/ads/zzva;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzva;->zzz()V

    goto :goto_0

    :cond_0
    return-void
.end method
