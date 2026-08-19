.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzba;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzbk;

.field public final synthetic zzb:Lcom/google/android/gms/internal/consent_sdk/zzay;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbk;Lcom/google/android/gms/internal/consent_sdk/zzay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzba;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbk;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzba;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzba;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbk;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzba;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzay;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbk;->zza(Lcom/google/android/gms/internal/consent_sdk/zzay;)V

    return-void
.end method
