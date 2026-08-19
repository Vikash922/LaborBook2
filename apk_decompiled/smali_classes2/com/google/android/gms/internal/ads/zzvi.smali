.class public final Lcom/google/android/gms/internal/ads/zzvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/ads/zzuy;

.field private final zzc:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvi;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzuy;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvi;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvi;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvi;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzvi;
    .locals 2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvi;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzvi;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzuy;)V

    return-object p1
.end method

.method public final zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzvj;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzvj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvi;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdk;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvi;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzb:Lcom/google/android/gms/internal/ads/zzvj;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvg;

    invoke-direct {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(Lcom/google/android/gms/internal/ads/zzdk;Lcom/google/android/gms/internal/ads/zzvj;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzP(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzuu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzvi;->zzc(Lcom/google/android/gms/internal/ads/zzdk;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvf;-><init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzvi;->zzc(Lcom/google/android/gms/internal/ads/zzdk;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzvi;->zzc(Lcom/google/android/gms/internal/ads/zzdk;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzve;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzve;-><init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzvi;->zzc(Lcom/google/android/gms/internal/ads/zzdk;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvc;-><init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzvi;->zzc(Lcom/google/android/gms/internal/ads/zzdk;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzvj;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvi;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzvh;->zzb:Lcom/google/android/gms/internal/ads/zzvj;

    if-ne v3, p1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
