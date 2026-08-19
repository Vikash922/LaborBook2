.class public final Lcom/google/android/gms/internal/consent_sdk/zzal;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzal;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzal;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzal;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/consent_sdk/zzak;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzal;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzal;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzam;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzar;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 1
    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzak;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzak;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzam;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
