.class public final Lcom/google/android/gms/measurement/internal/zzia;
.super Lcom/google/android/gms/measurement/internal/zzga;
.source "com.google.android.gms:play-services-measurement@@22.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zznv;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzga;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzia;)Lcom/google/android/gms/measurement/internal/zznv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    return-object p0
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 328
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhp;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhp;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Z)V
    .locals 2

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_3

    .line 141
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    .line 142
    const-string p2, "com.google.android.gms"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 144
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 145
    invoke-static {p2, v0}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 146
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p2

    .line 147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 149
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Ljava/lang/Boolean;

    .line 150
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 151
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 152
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 153
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 154
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 155
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    .line 156
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    .line 157
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "Unknown calling package name \'%s\'."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 165
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    throw p2

    .line 137
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V
    .locals 1

    .line 131
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 134
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private final zzb(Ljava/lang/Runnable;)V
    .locals 1

    .line 333
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhp;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzr()V

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzak;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzip;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzip;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 6
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzak;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get consent. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzak;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zznk;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziw;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zziw;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 32
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    const-string v1, "Failed to get trigger URIs. appId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzp;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzok;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 41
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zziv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zziv;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 46
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzom;

    if-nez p2, :cond_1

    .line 49
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzop;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzom;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 58
    const-string v1, "Failed to get user properties. appId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaf;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 61
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 66
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 68
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaf;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 74
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 76
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 77
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    .line 79
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzok;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzim;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 105
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 106
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzom;

    if-nez p4, :cond_1

    .line 108
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzop;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzom;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 113
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 114
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p3

    .line 115
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p3

    const-string p4, "Failed to get user properties as. appId"

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzok;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 82
    iget-object v0, p4, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzij;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 87
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzom;

    if-nez p3, :cond_1

    .line 90
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzop;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzom;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 95
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 96
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 98
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 99
    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p4, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 356
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzii;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 359
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 360
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzie;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzie;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zza(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzdi:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 221
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbj;->zzdk:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 222
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    .line 223
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 2

    .line 345
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 349
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzaf;)V

    .line 350
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzik;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzaf;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 338
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 341
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzaf;)V

    .line 342
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 343
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 312
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 314
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzis;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzis;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 316
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 318
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 319
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzir;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 382
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 384
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzit;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)[B
    .locals 9

    .line 386
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 388
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 389
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 390
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 392
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzg()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    const-string v2, "Log and bundle. event"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 395
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 396
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zziu;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 398
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 401
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 402
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 403
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 404
    new-array v4, v4, [B

    .line 405
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 406
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 407
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 409
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zznv;->zzg()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    .line 411
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 412
    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 416
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    .line 418
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 419
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzg()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 420
    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzbh;
    .locals 8

    .line 14
    const-string p2, "_cmp"

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbc;->zza()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v0, "_cis"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    const-string v0, "referrer broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "referrer API"

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzn()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string v0, "Event has been filtered "

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const-string v3, "_cmpx"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 2

    .line 363
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpi;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 364
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzdk:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 367
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 368
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzic;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final synthetic zzb(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    .line 227
    const-string v14, "_o"

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, v13, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 230
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v15

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 233
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const-wide/16 v3, -0x1

    .line 235
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const-string v19, "app_id = ? and rowid > ?"

    const/4 v5, 0x2

    .line 237
    new-array v0, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v0, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    .line 240
    :try_start_0
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    const-string v17, "raw_events"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "rowid"

    aput-object v10, v9, v6

    const-string v10, "name"

    aput-object v10, v9, v8

    const-string v10, "timestamp"

    aput-object v10, v9, v5

    const-string v10, "metadata_fingerprint"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string v10, "data"

    const/4 v7, 0x4

    aput-object v10, v9, v7

    const-string v10, "realtime"

    const/4 v5, 0x5

    aput-object v10, v9, v5

    const-string v23, "rowid"

    const-string v24, "1000"

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v9

    move-object/from16 v20, v0

    .line 241
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    if-eqz v9, :cond_1

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 245
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 246
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 247
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x1

    cmp-long v0, v21, v23

    if-nez v0, :cond_3

    move/from16 v21, v8

    goto :goto_2

    :cond_3
    move/from16 v21, v6

    .line 248
    :goto_2
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzmk;[B)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :try_start_4
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    const-string v16, ""

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v10, v16

    :goto_3
    :try_start_5
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    move-result-object v10

    const/4 v5, 0x2

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 259
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzno;->g_()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    .line 260
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 261
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzh()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v23, :cond_a

    :try_start_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 262
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzj()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 263
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v31, v12

    :try_start_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zza()D

    move-result-wide v11

    invoke-virtual {v10, v8, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :goto_5
    move-object/from16 v12, v31

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x3

    goto :goto_4

    :cond_5
    move-object/from16 v31, v12

    .line 264
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzk()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 265
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzb()F

    move-result v5

    invoke-virtual {v10, v8, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_5

    .line 266
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzl()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 267
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v11

    invoke-virtual {v10, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_5

    .line 268
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzn()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 269
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 270
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 272
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzol;->zzb(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v5

    .line 273
    invoke-virtual {v10, v8, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_5

    .line 274
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v8

    const-string v11, "Unexpected parameter type for parameter"

    invoke-virtual {v8, v11, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v9

    move-object/from16 v12, v31

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v31, v12

    goto/16 :goto_8

    :cond_a
    move-object/from16 v31, v12

    .line 276
    :try_start_8
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 278
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzgm;

    .line 279
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v26

    if-nez v5, :cond_b

    move-object/from16 v27, v16

    goto :goto_6

    :cond_b
    move-object/from16 v27, v5

    :goto_6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd()J

    move-result-wide v29

    move-object/from16 v25, v6

    move-object/from16 v28, v10

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/measurement/internal/zzgm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 281
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zziy;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Landroid/os/Bundle;

    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zziy;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zziy;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzgm;I)V

    .line 283
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb()J

    move-result-wide v22

    move-object/from16 v16, v5

    move-object/from16 v24, v6

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(JJZJLcom/google/android/gms/measurement/internal/zzgm;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v12, v31

    .line 285
    :try_start_9
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v12, v31

    goto :goto_8

    :catch_3
    move-exception v0

    .line 252
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v5

    .line 253
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v5

    const-string v6, "Data loss. Failed to merge raw event. appId"

    .line 254
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 255
    invoke-virtual {v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v0, :cond_c

    if-eqz v9, :cond_d

    .line 288
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :cond_c
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v11, 0x3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v9

    goto/16 :goto_c

    :catch_4
    move-exception v0

    :goto_8
    move-object v7, v9

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    const/4 v7, 0x0

    .line 290
    :goto_9
    :try_start_a
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v5

    .line 291
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v5

    const-string v6, "Data loss. Error querying raw events. appId"

    .line 292
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v7, :cond_d

    .line 294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_d
    :goto_a
    move-object v0, v12

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-wide/from16 v16, v3

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v0, :cond_f

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v18, v6, 0x1

    move-object v10, v3

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 299
    new-instance v19, Lcom/google/android/gms/measurement/internal/zzba;

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzam;->zzu:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaq;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/lang/String;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaq;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Ljava/lang/String;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaq;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:J

    move/from16 v20, v0

    iget-wide v0, v10, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaq;->zze:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Landroid/os/Bundle;

    move-object/from16 v3, v19

    move-object/from16 v6, p2

    move-object v2, v10

    move-object/from16 v21, v11

    move-wide v10, v0

    move-object v1, v12

    move-object/from16 v12, v21

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 300
    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Z

    move-object v3, v15

    move-object/from16 v6, v19

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLcom/google/android/gms/measurement/internal/zzba;JZ)Z

    .line 301
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    cmp-long v0, v3, v16

    if-lez v0, :cond_e

    .line 302
    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    move-wide/from16 v16, v2

    :cond_e
    move-object/from16 v2, p1

    move-object v12, v1

    move/from16 v6, v18

    move/from16 v0, v20

    move-object/from16 v1, p0

    goto :goto_b

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, v16

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :goto_c
    if-eqz v7, :cond_10

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_10
    throw v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "EES config found for"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhg;->zza:Landroidx/collection/LruCache;

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzb;

    :goto_0
    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "EES not loaded for"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 182
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v1

    .line 184
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    .line 185
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v1

    .line 186
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 188
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 189
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzad;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/google/android/gms/internal/measurement/zzad;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 190
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Lcom/google/android/gms/internal/measurement/zzad;)Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 196
    const-string v4, "EES error. appId, eventName"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "EES was not applied to event"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 201
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzb;->zzd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "EES edited event"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object p1

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzb;->zza()Lcom/google/android/gms/internal/measurement/zzac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzac;->zzb()Lcom/google/android/gms/internal/measurement/zzad;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzad;)Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object p1

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    .line 207
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 208
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzb;->zzc()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzb;->zza()Lcom/google/android/gms/internal/measurement/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzac;->zzc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzad;

    .line 210
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 211
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "EES logging created event"

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzad;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzad;)Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzia;->zzd(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 126
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzif;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 129
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzig;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzig;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 2

    .line 324
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/String;Z)V

    .line 326
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 352
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v0, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 371
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzib;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzib;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 376
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzid;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 378
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhz;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzia;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzj(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzr()V

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzf(Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method final synthetic zzk(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzr()V

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzg(Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
