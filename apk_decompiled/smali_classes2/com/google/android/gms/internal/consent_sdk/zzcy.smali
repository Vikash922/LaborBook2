.class final Lcom/google/android/gms/internal/consent_sdk/zzcy;
.super Lcom/google/android/gms/internal/consent_sdk/zzcv;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzda;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzda;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzcv;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzda;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzda;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzda;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
