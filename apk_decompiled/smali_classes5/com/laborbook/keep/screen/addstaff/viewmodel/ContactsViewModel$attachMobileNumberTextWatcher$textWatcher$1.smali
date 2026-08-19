.class public final Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;
.super Ljava/lang/Object;
.source "ContactsViewModel.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->attachMobileNumberTextWatcher(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "beforeTextChanged",
        "",
        "s",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "afterTextChanged",
        "Landroid/text/Editable;",
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


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^\\d+$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    invoke-static {v0, p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$setMobileNumberEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Z)V

    .line 116
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$isNameEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$isMobileNumberEntered$p(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$getUiState(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;

    invoke-direct {v0, v3}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;-><init>(Z)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$getUiState(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;

    invoke-direct {v0, v4}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;-><init>(Z)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
