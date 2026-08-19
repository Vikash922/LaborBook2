.class public final Lcom/inmobi/media/Q4;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/R4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I9;Lcom/inmobi/media/R4;)V
    .locals 0

    iput-object p2, p0, Lcom/inmobi/media/Q4;->a:Lcom/inmobi/media/R4;

    .line 1
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Lcom/inmobi/media/I9;

    check-cast p2, Lcom/inmobi/media/I9;

    .line 41
    invoke-static {p2}, Lcom/inmobi/media/J9;->a(Lcom/inmobi/media/I9;)I

    move-result p1

    invoke-static {p3}, Lcom/inmobi/media/J9;->a(Lcom/inmobi/media/I9;)I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Q4;->a:Lcom/inmobi/media/R4;

    .line 44
    iget-object p1, p1, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    .line 45
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/L9;

    .line 46
    invoke-interface {p2, p3}, Lcom/inmobi/media/L9;->a(Lcom/inmobi/media/I9;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
