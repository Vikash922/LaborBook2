.class public final Lcom/google/android/gms/internal/consent_sdk/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzdp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/consent_sdk/zzx;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzal;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzal;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzak;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzak;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzam;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzx;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzx;-><init>(Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzak;Lcom/google/android/gms/internal/consent_sdk/zzam;)V

    return-object v3
.end method
