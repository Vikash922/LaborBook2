.class final Lcom/google/android/gms/internal/consent_sdk/zzbp;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbr;Lcom/google/android/gms/internal/consent_sdk/zzbq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzbr;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbr;)Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zze(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zze(Lcom/google/android/gms/internal/consent_sdk/zzbr;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UserMessagingPlatform"

    const-string p2, "Wall html loaded."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzbr;Z)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbr;)Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzf(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzbr;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbr;)Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zze(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzbr;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbr;)Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zze(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
