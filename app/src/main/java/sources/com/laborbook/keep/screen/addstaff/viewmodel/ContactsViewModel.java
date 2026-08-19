package com.laborbook.keep.screen.addstaff.viewmodel;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.laborbook.base.BaseViewModel;
import com.laborbook.keep.model.AddStaffUserRequestBody;
import com.laborbook.keep.model.AddStaffUserResponse;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import com.laborbook.keep.screen.addstaff.uistate.AddStaffUiState;
import com.laborbook.keep.usecase.KeepUseCase;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* JADX INFO: compiled from: ContactsViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aJ$\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0083@¢\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;", "Lorg/koin/core/component/KoinComponent;", "keepUseCase", "Lcom/laborbook/keep/usecase/KeepUseCase;", "<init>", "(Lcom/laborbook/keep/usecase/KeepUseCase;)V", "getKeepUseCase", "()Lcom/laborbook/keep/usecase/KeepUseCase;", "isNameEntered", "", "isMobileNumberEntered", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "loadContacts", "", "context", "Landroid/content/Context;", "shouldHardRefresh", "addStaffUser", "Lkotlinx/coroutines/Job;", "addStaffRequestBody", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "attachNameTextWatcher", "textView", "Landroid/widget/TextView;", "attachMobileNumberTextWatcher", "fetchContacts", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "openNonContactStaff", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ContactsViewModel extends BaseViewModel<AddStaffUiState> implements KoinComponent {
    private final CoroutineExceptionHandler exceptionHandler;
    private boolean isMobileNumberEntered;
    private boolean isNameEntered;
    private final KeepUseCase keepUseCase;

    public ContactsViewModel(KeepUseCase keepUseCase) {
        Intrinsics.checkNotNullParameter(keepUseCase, "keepUseCase");
        this.keepUseCase = keepUseCase;
        this.exceptionHandler = new ContactsViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
    }

    public final KeepUseCase getKeepUseCase() {
        return this.keepUseCase;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$loadContacts$1 */
    /* JADX INFO: compiled from: ContactsViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$loadContacts$1", m2735f = "ContactsViewModel.kt", m2736i = {}, m2737l = {41, 42}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ boolean $shouldHardRefresh;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37151(Context context, boolean z, Continuation<? super C37151> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$shouldHardRefresh = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ContactsViewModel.this.new C37151(this.$context, this.$shouldHardRefresh, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception unused) {
                ContactsViewModel.this.getUiState().postValue(new AddStaffUiState.Error("Failed to load contacts"));
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = ContactsViewModel.this.fetchContacts(this.$context, this.$shouldHardRefresh, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            MainCoroutineDispatcher main = Dispatchers.getMain();
            ContactsViewModel contactsViewModel = ContactsViewModel.this;
            this.label = 2;
            if (BuildersKt.withContext(main, new AnonymousClass1(contactsViewModel, (List) obj, null), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$loadContacts$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: ContactsViewModel.kt */
        @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
        @DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$loadContacts$1$1", m2735f = "ContactsViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ List<ContactItem> $contacts;
            int label;
            final /* synthetic */ ContactsViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(ContactsViewModel contactsViewModel, List<ContactItem> list, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = contactsViewModel;
                this.$contacts = list;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$contacts, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    try {
                        this.this$0.getUiState().postValue(new AddStaffUiState.Success(this.$contacts));
                    } catch (Exception unused) {
                        this.this$0.getUiState().postValue(new AddStaffUiState.Error("Failed to load contacts"));
                    }
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void loadContacts(Context context, boolean shouldHardRefresh) {
        Intrinsics.checkNotNullParameter(context, "context");
        getUiState().setValue(AddStaffUiState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C37151(context, shouldHardRefresh, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$addStaffUser$1 */
    /* JADX INFO: compiled from: ContactsViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$addStaffUser$1", m2735f = "ContactsViewModel.kt", m2736i = {}, m2737l = {57, 57}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37141 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AddStaffUserRequestBody $addStaffRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37141(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super C37141> continuation) {
            super(2, continuation);
            this.$addStaffRequestBody = addStaffUserRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ContactsViewModel.this.new C37141(this.$addStaffRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37141) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = ContactsViewModel.this.getKeepUseCase().addStaffUser(this.$addStaffRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            final ContactsViewModel contactsViewModel = ContactsViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel.addStaffUser.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$addStaffUser$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: ContactsViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$addStaffUser$1$1$1", m2735f = "ContactsViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<AddStaffUserResponse> $it;
                    int label;
                    final /* synthetic */ ContactsViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$addStaffUser$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: ContactsViewModel.kt */
                    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[NetworkResultStatus.values().length];
                            try {
                                iArr[NetworkResultStatus.SUCCESS.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[NetworkResultStatus.ERROR.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[NetworkResultStatus.LOADING.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C49501(NetworkResult<AddStaffUserResponse> networkResult, ContactsViewModel contactsViewModel, Continuation<? super C49501> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = contactsViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49501(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        if (i == 1) {
                            MutableLiveData uiState = this.this$0.getUiState();
                            AddStaffUserResponse data = this.$it.getData();
                            uiState.setValue(data != null ? new AddStaffUiState.StaffUserAddedSuccess(data.getId(), data.getMobileNumber()) : null);
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            uiState2.setValue(new AddStaffUiState.StaffAddError(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(AddStaffUiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<AddStaffUserResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<AddStaffUserResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49501(networkResult, contactsViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job addStaffUser(AddStaffUserRequestBody addStaffRequestBody) {
        Intrinsics.checkNotNullParameter(addStaffRequestBody, "addStaffRequestBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37141(addStaffRequestBody, null), 2, null);
    }

    public final void attachNameTextWatcher(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$attachNameTextWatcher$textWatcher$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                this.this$0.isNameEntered = String.valueOf(s).length() > 0;
                if (!this.this$0.isNameEntered || !this.this$0.isMobileNumberEntered) {
                    this.this$0.getUiState().setValue(new AddStaffUiState.EnableAddStaffButton(false));
                } else {
                    this.this$0.getUiState().setValue(new AddStaffUiState.EnableAddStaffButton(true));
                }
            }
        });
    }

    public final void attachMobileNumberTextWatcher(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$attachMobileNumberTextWatcher$textWatcher$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                this.this$0.isMobileNumberEntered = String.valueOf(s).length() == 10 && new Regex("^\\d+$").matches(StringsKt.trim((CharSequence) String.valueOf(s)).toString());
                if (!this.this$0.isNameEntered || !this.this$0.isMobileNumberEntered) {
                    this.this$0.getUiState().setValue(new AddStaffUiState.EnableAddStaffButton(false));
                } else {
                    this.this$0.getUiState().setValue(new AddStaffUiState.EnableAddStaffButton(true));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fetchContacts(Context context, boolean z, Continuation<? super List<ContactItem>> continuation) {
        return this.keepUseCase.loadContacts(context, z, continuation);
    }

    public final void openNonContactStaff() {
        getUiState().setValue(new AddStaffUiState.OpenNonContactStaff(true));
    }
}
