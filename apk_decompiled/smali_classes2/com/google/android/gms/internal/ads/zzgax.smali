.class abstract Lcom/google/android/gms/internal/ads/zzgax;
.super Lcom/google/android/gms/internal/ads/zzgag$zzf;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzbe:Lcom/google/android/gms/internal/ads/zzgat;

.field private static final zzbf:Lcom/google/android/gms/internal/ads/zzgcb;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgax;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgax;->zzbf:Lcom/google/android/gms/internal/ads/zzgcb;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgau;-><init>(Lcom/google/android/gms/internal/ads/zzgaw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgav;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzgav;-><init>(Lcom/google/android/gms/internal/ads/zzgaw;)V

    move-object v8, v1

    move-object v1, v2

    .line 2
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgax;->zzbe:Lcom/google/android/gms/internal/ads/zzgat;

    if-eqz v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgax;->zzbf:Lcom/google/android/gms/internal/ads/zzgcb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcb;->zza()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgag$zzf;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgax;->remaining:I

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzgax;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgax;->remaining:I

    return p0
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzgax;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgax;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic zzN(Lcom/google/android/gms/internal/ads/zzgax;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgax;->remaining:I

    return-void
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/internal/ads/zzgax;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgax;->seenExceptions:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method abstract zzE(Ljava/util/Set;)V
.end method

.method final zzK()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgax;->zzbe:Lcom/google/android/gms/internal/ads/zzgat;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgat;->zza(Lcom/google/android/gms/internal/ads/zzgax;)I

    move-result v0

    return v0
.end method

.method final zzM()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgax;->zzE(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgax;->zzbe:Lcom/google/android/gms/internal/ads/zzgat;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgat;->zzb(Lcom/google/android/gms/internal/ads/zzgax;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->seenExceptions:Ljava/util/Set;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final zzP()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->seenExceptions:Ljava/util/Set;

    return-void
.end method
