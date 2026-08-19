.class final Lcom/google/android/gms/internal/consent_sdk/zzae;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzae;->zza:Lcom/google/android/gms/internal/consent_sdk/zzaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzae;->zza:Lcom/google/android/gms/internal/consent_sdk/zzaf;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzah;

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzaf;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzah;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzaf;Lcom/google/android/gms/internal/consent_sdk/zzaj;)V

    return-object v1
.end method
