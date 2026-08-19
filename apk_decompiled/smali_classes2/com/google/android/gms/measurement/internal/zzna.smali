.class final Lcom/google/android/gms/measurement/internal/zzna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznb;->zzb(Lcom/google/android/gms/measurement/internal/zznb;J)V

    return-void
.end method
