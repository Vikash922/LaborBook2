.class public final Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;
.super Ljava/lang/Object;
.source "RequestPermissionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;,
        Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;,
        Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestPermissionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestPermissionHandler.kt\ncom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1855#2,2:254\n37#3,2:256\n1#4:258\n*S KotlinDebug\n*F\n+ 1 RequestPermissionHandler.kt\ncom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler\n*L\n131#1:254,2\n146#1:256,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u000234B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J$\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0010\u0010!\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0008\u0010\"\u001a\u00020\u0008H\u0002J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\u0008H\u0002J\u0008\u0010%\u001a\u00020\u0011H\u0002J\u000e\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(J)\u0010)\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0*2\u0006\u0010+\u001a\u00020,\u00a2\u0006\u0002\u0010-J\u0006\u0010.\u001a\u00020\u0011J\u0006\u0010/\u001a\u00020\u0011J\u0006\u00100\u001a\u00020\u0011J\u0010\u00101\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0008\u00102\u001a\u00020\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u00065"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "listener",
        "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;)V",
        "hadShownRationale",
        "",
        "permissions",
        "",
        "",
        "getPermissions",
        "()Ljava/util/Set;",
        "setPermissions",
        "(Ljava/util/Set;)V",
        "cancel",
        "",
        "doRequestPermission",
        "findPermissionsFragment",
        "Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getPermission",
        "status",
        "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;",
        "getPermissionsFragment",
        "getPrefs",
        "Landroid/content/SharedPreferences;",
        "context",
        "Landroid/content/Context;",
        "isNeverAskAgainPermission",
        "permission",
        "isPermissionGranted",
        "isPermissionRequestedInManifest",
        "markNeverAskAgainPermission",
        "value",
        "notifyComplete",
        "onActivityResult",
        "requestCode",
        "",
        "onRequestPermissionsResult",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "requestPermission",
        "requestPermissionInSetting",
        "retryRequestDeniedPermission",
        "shouldShowRequestPermissionRationale",
        "showRationaleIfNeeded",
        "Listener",
        "Status",
        "sdk-external_googlePlayOAuthReleasePartner"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activity:Landroidx/fragment/app/FragmentActivity;

.field private hadShownRationale:Z

.field private final listener:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;

.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 50
    iput-object p2, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->listener:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    const/4 v0, 0x2

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_CALL_LOG"

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt p1, p2, :cond_0

    .line 58
    new-array p1, v5, [Ljava/lang/String;

    const-string p2, "android.permission.ANSWER_PHONE_CALLS"

    aput-object p2, p1, v4

    aput-object v3, p1, v2

    .line 59
    aput-object v1, p1, v0

    .line 57
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_0
    new-array p1, v5, [Ljava/lang/String;

    aput-object v3, p1, v4

    aput-object v1, p1, v2

    .line 64
    const-string p2, "android.permission.CALL_PHONE"

    aput-object p2, p1, v0

    .line 62
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 56
    :goto_0
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;)V

    return-void
.end method

.method private final doRequestPermission(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermissionsFragment()Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->setRequestPermissionHandler(Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;)V

    .line 145
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 257
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v1, 0xc8

    .line 146
    invoke-virtual {v0, p1, v1}, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final findPermissionsFragment(Landroidx/fragment/app/FragmentManager;)Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;
    .locals 1

    .line 241
    const-string v0, "FragTag"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;

    return-object p1
.end method

.method private final getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    sget-object v2, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->isNeverAskAgainPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_3
    invoke-direct {p0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_4
    invoke-direct {p0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_5
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private final getPermissionsFragment()Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->findPermissionsFragment(Landroidx/fragment/app/FragmentManager;)Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;

    .line 229
    new-instance v1, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;

    invoke-direct {v1}, Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;-><init>()V

    .line 231
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 232
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "FragTag"

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-object v1
.end method

.method private final getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 213
    const-string v0, "SHARED_PREFS_RUNTIME_PERMISSION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final isNeverAskAgainPermission(Ljava/lang/String;)Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isPermissionRequestedInManifest()Z
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "getPackageManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1000

    const/4 v3, 0x0

    .line 183
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "getPackageInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 185
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v3
.end method

.method private final markNeverAskAgainPermission(Ljava/lang/String;Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final notifyComplete()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->listener:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    sget-object v2, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-direct {p0, v1, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    sget-object v3, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->UN_GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-direct {p0, v2, v3}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;->onComplete(Ljava/util/Set;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private final shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final showRationaleIfNeeded()Z
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    sget-object v1, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->UN_GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-direct {p0, v0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->PERMANENT_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-direct {p0, v0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v1

    .line 87
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->listener:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;->onShowSettingRationale(Ljava/util/Set;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 94
    :cond_1
    sget-object v1, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->TEMPORARY_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-direct {p0, v0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v0

    .line 95
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->listener:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;->onShowPermissionRationale(Ljava/util/Set;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->notifyComplete()V

    return-void
.end method

.method public final getPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method public final onActivityResult(I)V
    .locals 2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    sget-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-direct {p0, p1, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->getPermission(Ljava/util/Set;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 254
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->markNeverAskAgainPermission(Ljava/lang/String;Z)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->notifyComplete()V

    :cond_1
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 118
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 119
    aget v2, p3, v1

    if-nez v2, :cond_0

    .line 120
    aget-object v2, p2, v1

    invoke-direct {p0, v2, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->markNeverAskAgainPermission(Ljava/lang/String;Z)V

    goto :goto_1

    .line 121
    :cond_0
    aget-object v2, p2, v1

    invoke-direct {p0, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    aget-object v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->markNeverAskAgainPermission(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->notifyComplete()V

    :cond_3
    return-void
.end method

.method public final requestPermission()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->isPermissionRequestedInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->showRationaleIfNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->hadShownRationale:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->doRequestPermission(Ljava/util/Set;)V

    :cond_0
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Desired Permissions not requested in Android Manifest!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requestPermissionInSetting()V
    .locals 4

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final retryRequestDeniedPermission()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->doRequestPermission(Ljava/util/Set;)V

    return-void
.end method

.method public final setPermissions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;->permissions:Ljava/util/Set;

    return-void
.end method
