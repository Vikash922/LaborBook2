.class public final synthetic Lcom/google/android/gms/wallet/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.3"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wallet/IsReadyToPayRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/zzab;->zza:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzab;->zza:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    check-cast p1, Lcom/google/android/gms/internal/wallet/zzab;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v1, Lcom/google/android/gms/wallet/PaymentsClient;->zza:I

    .line 1
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/wallet/zzab;->zzr(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
