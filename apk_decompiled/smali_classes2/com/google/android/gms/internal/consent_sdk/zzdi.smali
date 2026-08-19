.class public final Lcom/google/android/gms/internal/consent_sdk/zzdi;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdk;


# instance fields
.field private zza:Lcom/google/android/gms/internal/consent_sdk/zzdn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/consent_sdk/zzdn;Lcom/google/android/gms/internal/consent_sdk/zzdn;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/consent_sdk/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdi;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdi;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdi;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdn;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
