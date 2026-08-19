.class public final Lcom/inmobi/media/g8;
.super Landroid/media/MediaPlayer;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/Object;

.field public static e:Lcom/inmobi/media/g8;

.field public static f:I


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/inmobi/media/g8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/media/g8;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/inmobi/media/g8;->a:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/inmobi/media/g8;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget v1, Lcom/inmobi/media/g8;->f:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 4
    sget-object v2, Lcom/inmobi/media/g8;->e:Lcom/inmobi/media/g8;

    iput-object v2, p0, Lcom/inmobi/media/g8;->c:Lcom/inmobi/media/g8;

    .line 5
    sput-object p0, Lcom/inmobi/media/g8;->e:Lcom/inmobi/media/g8;

    add-int/lit8 v1, v1, 0x1

    .line 6
    sput v1, Lcom/inmobi/media/g8;->f:I

    .line 8
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
