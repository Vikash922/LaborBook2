.class final Lcom/google/android/gms/internal/consent_sdk/zzav;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

.field private final zzb:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzay;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zzb:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzav;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzav;->zzb()V

    return-void
.end method

.method private final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zza(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/consent_sdk/zzay;->zza:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzay;)Lcom/google/android/gms/internal/consent_sdk/zzbt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzay;)Lcom/google/android/gms/internal/consent_sdk/zzbt;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbt;->zza(Landroid/app/Activity;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zze(Lcom/google/android/gms/internal/consent_sdk/zzay;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzav;

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p2}, Lcom/google/android/gms/internal/consent_sdk/zzav;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzav;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzav;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzay;Landroid/app/Activity;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zza(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Application;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zze(Lcom/google/android/gms/internal/consent_sdk/zzay;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Dialog;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zzb:Landroid/app/Activity;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzay;->zza:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzay;)Landroid/app/Dialog;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza:Lcom/google/android/gms/internal/consent_sdk/zzay;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v1, 0x3

    .line 2
    const-string v2, "Activity is destroyed."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzh(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
