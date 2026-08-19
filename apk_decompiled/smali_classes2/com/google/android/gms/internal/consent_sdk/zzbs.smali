.class public final Lcom/google/android/gms/internal/consent_sdk/zzbs;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/consent_sdk/zzbr;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbt;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzap;->zzb()Landroid/os/Handler;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbr;

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbr;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbt;Landroid/os/Handler;Lcom/google/android/gms/internal/consent_sdk/zzbx;)V

    return-object v3
.end method
