.class public final Lcom/google/android/gms/internal/ads/zzfni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfmr;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfnh;

.field private zze:Lcom/google/android/gms/tasks/Task;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfmt;Lcom/google/android/gms/internal/ads/zzfng;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfni;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfni;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfni;->zzc:Lcom/google/android/gms/internal/ads/zzfmr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfni;->zzd:Lcom/google/android/gms/internal/ads/zzfnh;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzfni;)Lcom/google/android/gms/internal/ads/zzasu;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfni;->zza:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzfmz;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfmt;)Lcom/google/android/gms/internal/ads/zzfni;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfni;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfng;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfng;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfni;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfmt;Lcom/google/android/gms/internal/ads/zzfng;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfne;

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzfne;-><init>(Lcom/google/android/gms/internal/ads/zzfni;)V

    iget-object p1, v6, Lcom/google/android/gms/internal/ads/zzfni;->zzb:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfnf;

    invoke-direct {p2, v6}, Lcom/google/android/gms/internal/ads/zzfnf;-><init>(Lcom/google/android/gms/internal/ads/zzfni;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v6, Lcom/google/android/gms/internal/ads/zzfni;->zze:Lcom/google/android/gms/tasks/Task;

    return-object v6
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzfni;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfni;->zzc:Lcom/google/android/gms/internal/ads/zzfmr;

    const/16 v0, 0x7e9

    const-wide/16 v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfmr;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzasu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfni;->zzd:Lcom/google/android/gms/internal/ads/zzfnh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfni;->zze:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfnh;->zza()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasu;

    return-object v0
.end method
