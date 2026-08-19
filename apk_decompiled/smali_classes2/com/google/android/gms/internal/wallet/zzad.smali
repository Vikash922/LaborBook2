.class final Lcom/google/android/gms/internal/wallet/zzad;
.super Lcom/google/android/gms/wallet/zzal;
.source "com.google.android.gms:play-services-wallet@@18.1.3"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

.field final synthetic zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wallet/zzae;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/wallet/zzad;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput p4, p0, Lcom/google/android/gms/internal/wallet/zzad;->zzb:I

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/zzal;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/wallet/zzab;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wallet/zzad;->zza(Lcom/google/android/gms/internal/wallet/zzab;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/wallet/zzab;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wallet/zzad;->zza:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget v1, p0, Lcom/google/android/gms/internal/wallet/zzad;->zzb:I

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/wallet/zzab;->zzp(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V

    .line 2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wallet/zzad;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
