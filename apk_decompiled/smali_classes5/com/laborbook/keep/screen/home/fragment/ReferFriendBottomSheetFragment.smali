.class public final Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "ReferFriendBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\nH\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0002J\u0008\u0010\u0018\u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "onStart",
        "",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "startConfettiAnimation",
        "setupClickListeners",
        "shareOnWhatsApp",
        "Companion",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "ReferFriendBottomSheetFragment"


# direct methods
.method public static synthetic $r8$lambda$2xSCzf-3h5CxVzVMwSmhB25Zf6Q(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->startConfettiAnimation$lambda$0(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AeI_wUVIBPS6yWkIirxT5zKUqBs(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->setupClickListeners$lambda$1(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    return-void
.end method

.method private final setupClickListeners()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;->btnShareWhatsapp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setupClickListeners$lambda$1(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->shareOnWhatsApp()V

    .line 68
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->dismiss()V

    return-void
.end method

.method private final shareOnWhatsApp()V
    .locals 9

    const/4 v0, 0x0

    .line 75
    :try_start_0
    sget v1, Lcom/laborbook/keep/R$string;->refer_friend_whatsapp_message:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/laborbook/base/R$raw;->share_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "openRawResource(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "share_image.jpeg"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v5, v2

    check-cast v5, Ljava/io/InputStream;

    .line 84
    check-cast v4, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v4

    check-cast v6, Ljava/io/FileOutputStream;

    .line 85
    check-cast v6, Ljava/io/OutputStream;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v0, v7, v8}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-static {v4, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    :try_start_4
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v2, v4, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 96
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "android.intent.extra.STREAM"

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string v1, "com.whatsapp"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 84
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    .line 83
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to share: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :catch_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Failed to prepare image for sharing."

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :catch_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WhatsApp is not installed on your device."

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final startConfettiAnimation()V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;->confettiView:Lcom/laborbook/keep/screen/home/fragment/ConfettiView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final startConfettiAnimation$lambda$0(Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;->confettiView:Lcom/laborbook/keep/screen/home/fragment/ConfettiView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->startConfettiAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "refer_a_friend"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 42
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 26
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onStart()V

    .line 27
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 28
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x4

    .line 31
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->setupClickListeners()V

    .line 56
    invoke-direct {p0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->startConfettiAnimation()V

    return-void
.end method
