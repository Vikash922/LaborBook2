.class abstract Lcom/google/android/gms/internal/ads/zzgah;
.super Lcom/google/android/gms/internal/ads/zzgcw;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgcw;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

.field static final zze:Ljava/lang/Object;

.field static final zzf:Lcom/google/android/gms/internal/ads/zzgcb;

.field static final zzg:Z

.field public static final synthetic zzh:I


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/ads/zzgag$zzd;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zze:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgag;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zzf:Lcom/google/android/gms/internal/ads/zzgcb;

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzgah;->zzg:Z

    const/4 v0, 0x0

    .line 3
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgah$zzd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgah$zzd;-><init>(Lcom/google/android/gms/internal/ads/zzgal;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    move-object v9, v5

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 4
    :goto_1
    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgah$zzb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzgah$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzgal;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object v9, v0

    move-object v5, v1

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgah$zzc;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzgah$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzgal;)V

    move-object v5, v1

    move-object v9, v2

    move-object v1, v3

    .line 3
    :goto_3
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    if-eqz v9, :cond_0

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgah;->zzf:Lcom/google/android/gms/internal/ads/zzgcb;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgcb;->zza()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    const-string v2, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgcb;->zza()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "<clinit>"

    const-string v8, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 7
    const-string v6, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgcw;-><init>()V

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/ads/zzgah$zze;Ljava/lang/Thread;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzd(Lcom/google/android/gms/internal/ads/zzgah$zze;Ljava/lang/Thread;)V

    return-void
.end method

.method static zzD(Lcom/google/android/gms/internal/ads/zzgah;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzf(Lcom/google/android/gms/internal/ads/zzgah;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzgah$zze;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzgah$zze;->thread:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgah$zze;->zza:Lcom/google/android/gms/internal/ads/zzgah$zze;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzgah$zze;->next:Lcom/google/android/gms/internal/ads/zzgah$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgah$zze;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzgah$zze;->next:Lcom/google/android/gms/internal/ads/zzgah$zze;

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzgah$zze;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzg(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgah$zze;Lcom/google/android/gms/internal/ads/zzgah$zze;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzgah;)Lcom/google/android/gms/internal/ads/zzgag$zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgah;->listeners:Lcom/google/android/gms/internal/ads/zzgag$zzd;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzgah;)Lcom/google/android/gms/internal/ads/zzgah$zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/internal/ads/zzgah;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgag$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgah;->listeners:Lcom/google/android/gms/internal/ads/zzgag$zzd;

    return-void
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzgah;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgah$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    return-void
.end method


# virtual methods
.method final zzB()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgah$zze;->zza:Lcom/google/android/gms/internal/ads/zzgah$zze;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzb(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgah$zze;)Lcom/google/android/gms/internal/ads/zzgah$zze;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgah$zze;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgah$zze;->thread:Ljava/lang/Thread;

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgah$zze;->next:Lcom/google/android/gms/internal/ads/zzgah$zze;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final zzC(Lcom/google/android/gms/internal/ads/zzgag$zzd;Lcom/google/android/gms/internal/ads/zzgag$zzd;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zze(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgag$zzd;Lcom/google/android/gms/internal/ads/zzgag$zzd;)Z

    move-result p1

    return p1
.end method

.method final zzq(Lcom/google/android/gms/internal/ads/zzgag$zzd;)Lcom/google/android/gms/internal/ads/zzgag$zzd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zza(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgag$zzd;)Lcom/google/android/gms/internal/ads/zzgag$zzd;

    move-result-object p1

    return-object p1
.end method

.method final zzr()Lcom/google/android/gms/internal/ads/zzgag$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->listeners:Lcom/google/android/gms/internal/ads/zzgag$zzd;

    return-object v0
.end method

.method final zzu()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgag;->zzm(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgah$zze;->zza:Lcom/google/android/gms/internal/ads/zzgah$zze;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgah$zze;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzgah$zze;-><init>()V

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    .line 6
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzc(Lcom/google/android/gms/internal/ads/zzgah$zze;Lcom/google/android/gms/internal/ads/zzgah$zze;)V

    .line 7
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzg(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgah$zze;Lcom/google/android/gms/internal/ads/zzgah$zze;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgag;->zzm(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzgah;->zza(Lcom/google/android/gms/internal/ads/zzgah$zze;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 11
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgah$zze;->zza:Lcom/google/android/gms/internal/ads/zzgah$zze;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    .line 2
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final zzv(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 3
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 4
    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgag;->zzm(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    sget-object v15, Lcom/google/android/gms/internal/ads/zzgah$zze;->zza:Lcom/google/android/gms/internal/ads/zzgah$zze;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcom/google/android/gms/internal/ads/zzgah$zze;

    .line 7
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzgah$zze;-><init>()V

    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/ads/zzgah;->zza:Lcom/google/android/gms/internal/ads/zzgah$zza;

    .line 8
    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzc(Lcom/google/android/gms/internal/ads/zzgah$zze;Lcom/google/android/gms/internal/ads/zzgah$zze;)V

    .line 9
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/ads/zzgah$zza;->zzg(Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzgah$zze;Lcom/google/android/gms/internal/ads/zzgah$zze;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgag;->zzm(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 12
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 16
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzgah;->zza(Lcom/google/android/gms/internal/ads/zzgah$zze;)V

    goto :goto_3

    .line 13
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzgah;->zza(Lcom/google/android/gms/internal/ads/zzgah$zze;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 14
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 18
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgah;->waiters:Lcom/google/android/gms/internal/ads/zzgah$zze;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgah$zze;->zza:Lcom/google/android/gms/internal/ads/zzgah$zze;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 16
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgag;->zzm(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgag;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 17
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    .line 20
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Waited "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_14

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 25
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_5
    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v8, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgah;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    .line 3
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method final zzw()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgah;->value:Ljava/lang/Object;

    return-object v0
.end method
