.class final Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RxDataStoreBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/rxjava3/RxDataStoreBuilder;->build()Landroidx/datastore/rxjava3/RxDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "T",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/datastore/rxjava3/RxDataStoreBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/rxjava3/RxDataStoreBuilder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/rxjava3/RxDataStoreBuilder<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;->this$0:Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 2

    .line 155
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;->this$0:Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    invoke-static {v0}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->access$getContext$p(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;->this$0:Landroidx/datastore/rxjava3/RxDataStoreBuilder;

    invoke-static {v1}, Landroidx/datastore/rxjava3/RxDataStoreBuilder;->access$getName$p(Landroidx/datastore/rxjava3/RxDataStoreBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroidx/datastore/rxjava3/RxDataStoreBuilder$build$delegateDs$2;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
