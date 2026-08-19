.class public final Lcom/google/android/gms/internal/consent_sdk/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbl;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzar;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbk;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbl;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    .line 3
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbk;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
