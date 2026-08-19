.class public final Lcom/google/android/gms/internal/consent_sdk/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzay;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbb;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzbc;-><init>()V

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzf(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbm;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v0, 0x3

    .line 3
    const-string v1, "No available form can be built."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Lcom/google/android/ump/FormError;

    move-result-object p1

    .line 3
    invoke-interface {p2, p1}, Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;->onConsentFormLoadFailure(Lcom/google/android/ump/FormError;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzas;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzas;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbm;)Lcom/google/android/gms/internal/consent_sdk/zzas;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzas;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzat;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zza()Lcom/google/android/gms/internal/consent_sdk/zzay;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->zzf(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbm;

    if-nez v0, :cond_0

    const-string v0, "UserMessagingPlatform"

    const-string v1, "Failed to load and cache a form due to null consent form resources."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzas;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzas;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbm;)Lcom/google/android/gms/internal/consent_sdk/zzas;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzas;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzat;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zza()Lcom/google/android/gms/internal/consent_sdk/zzay;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzay;->zza:Z

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzba;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzba;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbk;Lcom/google/android/gms/internal/consent_sdk/zzay;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/consent_sdk/zzbm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zza;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zza;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzj;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbd;-><init>(Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzj;->isConsentFormAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzj;->getPrivacyOptionsRequirementStatus()Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    move-result-object v1

    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbe;-><init>(Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza(Landroid/app/Activity;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzj;->getPrivacyOptionsRequirementStatus()Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbf;-><init>(Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ump/ConsentForm;

    if-nez v0, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbg;-><init>(Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_4
    invoke-interface {v0, p1, p2}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzb:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzbh;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/consent_sdk/zzbh;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbk;)V

    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
