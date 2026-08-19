.class final Lcom/google/android/gms/internal/measurement/zzjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzkl;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:[B

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb([B)Lcom/google/android/gms/internal/measurement/zzkl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzkl;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzka;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzjs;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkb;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzkl;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzkl;

    return-object v0
.end method
