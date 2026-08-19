.class public final Lcom/inmobi/media/Ua;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ya;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public static final a(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$origin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 23
    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Lcom/inmobi/media/Ya;Lcom/inmobi/media/Ua;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p3, p2, :cond_1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 5
    sget-object p2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 6
    const-string p3, "access$getTAG$cp(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/g5;

    const-string p3, "Back pressed when HTML5 video is playing."

    invoke-virtual {p0, p2, p3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/media/Ua;->a()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$callback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$origin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method public static final c(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 9
    iget-object v1, v0, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/inmobi/media/Ya;->J:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/inmobi/media/Ya;->J:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 17
    iget-object v0, v0, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 19
    iget-object v2, v2, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 22
    iput-object v1, v0, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    :cond_6
    return-void
.end method

.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    const-string v0, "cm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5
    const-string v2, "access$getTAG$cp(...)"

    const-string v3, "Console message:"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2039
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 7
    iget-object v1, v1, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Location Permission"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Allow location access"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda5;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p1}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda6;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public final onHideCustomView()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ua;->a()V

    .line 2
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsAlert called with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-static {p1, p4}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda4;

    invoke-direct {p2, p4}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda4;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsConfirm called with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-static {p1, p4}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p2}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "defaultValue"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    sget-object p4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v0, "access$getTAG$cp(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsPrompt called with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p4, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-static {p1, p5}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Landroid/webkit/JsResult;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p5}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v2, "access$getTAG$cp(...)"

    const-string v3, "webview progress changed - "

    invoke-static {v1, v2, v3, p2}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1974
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 5
    iput-object p1, v0, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    .line 6
    iput-object p2, v0, Lcom/inmobi/media/Ya;->J:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz p1, :cond_0

    .line 7
    new-instance p2, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 10
    iget-object p1, p1, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 13
    iget-object p2, p2, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    if-eqz p2, :cond_2

    const/high16 v0, -0x1000000

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    iget-object p2, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 17
    iget-object p2, p2, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    .line 18
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 24
    iget-object p1, p1, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/Ua;->a:Lcom/inmobi/media/Ya;

    .line 27
    iget-object p2, p1, Lcom/inmobi/media/Ya;->I:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lcom/inmobi/media/Ua$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/Ya;Lcom/inmobi/media/Ua;)V

    if-eqz p2, :cond_5

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_5
    const/4 p1, 0x1

    if-nez p2, :cond_6

    goto :goto_1

    .line 30
    :cond_6
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    :goto_1
    if-nez p2, :cond_7

    goto :goto_2

    .line 31
    :cond_7
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_2
    if-eqz p2, :cond_8

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_8
    return-void
.end method
