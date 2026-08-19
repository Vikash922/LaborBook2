package com.laborbook.expense.screen.cashentry.uistate;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CashInOutUiState.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0006\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0001\u0006\u000b\f\r\u000e\u000f\u0010¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "T", "", "<init>", "()V", "LOADING", "CREATE_SUCCESS", "UPDATE_SUCCESS", "DELETE_SUCCESS", "ERROR", "ExpenseEntered", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$CREATE_SUCCESS;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$DELETE_SUCCESS;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ERROR;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$LOADING;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class CashInOutUiState<T> {
    public /* synthetic */ CashInOutUiState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: CashInOutUiState.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\t\u001a\u00020\nHÖ\u0001J\t\u0010\u000b\u001a\u00020\fHÖ\u0001¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$LOADING;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "", "<init>", "()V", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class LOADING extends CashInOutUiState {
        public static final LOADING INSTANCE = new LOADING();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LOADING)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1883730623;
        }

        public String toString() {
            return "LOADING";
        }

        private LOADING() {
            super(null);
        }
    }

    private CashInOutUiState() {
    }

    /* JADX INFO: compiled from: CashInOutUiState.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0019\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\r\u001a\u00020\u0005HÆ\u0003J(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000b¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$CREATE_SUCCESS;", "T", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "data", "isFromServer", "", "<init>", "(Ljava/lang/Object;Z)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "()Z", "component1", "component2", "copy", "(Ljava/lang/Object;Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$CREATE_SUCCESS;", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class CREATE_SUCCESS<T> extends CashInOutUiState<T> {
        private final T data;
        private final boolean isFromServer;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CREATE_SUCCESS copy$default(CREATE_SUCCESS create_success, Object obj, boolean z, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = create_success.data;
            }
            if ((i & 2) != 0) {
                z = create_success.isFromServer;
            }
            return create_success.copy(obj, z);
        }

        public final T component1() {
            return this.data;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsFromServer() {
            return this.isFromServer;
        }

        public final CREATE_SUCCESS<T> copy(T data, boolean isFromServer) {
            return new CREATE_SUCCESS<>(data, isFromServer);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CREATE_SUCCESS)) {
                return false;
            }
            CREATE_SUCCESS create_success = (CREATE_SUCCESS) other;
            return Intrinsics.areEqual(this.data, create_success.data) && this.isFromServer == create_success.isFromServer;
        }

        public int hashCode() {
            T t = this.data;
            return ((t == null ? 0 : t.hashCode()) * 31) + Boolean.hashCode(this.isFromServer);
        }

        public String toString() {
            return "CREATE_SUCCESS(data=" + this.data + ", isFromServer=" + this.isFromServer + ')';
        }

        public CREATE_SUCCESS(T t, boolean z) {
            super(null);
            this.data = t;
            this.isFromServer = z;
        }

        public /* synthetic */ CREATE_SUCCESS(Object obj, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i & 2) != 0 ? true : z);
        }

        public final T getData() {
            return this.data;
        }

        public final boolean isFromServer() {
            return this.isFromServer;
        }
    }

    /* JADX INFO: compiled from: CashInOutUiState.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0019\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\r\u001a\u00020\u0005HÆ\u0003J(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000b¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;", "T", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "data", "isFromServer", "", "<init>", "(Ljava/lang/Object;Z)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "()Z", "component1", "component2", "copy", "(Ljava/lang/Object;Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$UPDATE_SUCCESS;", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class UPDATE_SUCCESS<T> extends CashInOutUiState<T> {
        private final T data;
        private final boolean isFromServer;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UPDATE_SUCCESS copy$default(UPDATE_SUCCESS update_success, Object obj, boolean z, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = update_success.data;
            }
            if ((i & 2) != 0) {
                z = update_success.isFromServer;
            }
            return update_success.copy(obj, z);
        }

        public final T component1() {
            return this.data;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsFromServer() {
            return this.isFromServer;
        }

        public final UPDATE_SUCCESS<T> copy(T data, boolean isFromServer) {
            return new UPDATE_SUCCESS<>(data, isFromServer);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UPDATE_SUCCESS)) {
                return false;
            }
            UPDATE_SUCCESS update_success = (UPDATE_SUCCESS) other;
            return Intrinsics.areEqual(this.data, update_success.data) && this.isFromServer == update_success.isFromServer;
        }

        public int hashCode() {
            T t = this.data;
            return ((t == null ? 0 : t.hashCode()) * 31) + Boolean.hashCode(this.isFromServer);
        }

        public String toString() {
            return "UPDATE_SUCCESS(data=" + this.data + ", isFromServer=" + this.isFromServer + ')';
        }

        public UPDATE_SUCCESS(T t, boolean z) {
            super(null);
            this.data = t;
            this.isFromServer = z;
        }

        public /* synthetic */ UPDATE_SUCCESS(Object obj, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i & 2) != 0 ? true : z);
        }

        public final T getData() {
            return this.data;
        }

        public final boolean isFromServer() {
            return this.isFromServer;
        }
    }

    /* JADX INFO: compiled from: CashInOutUiState.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0019\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\u00028\u0001HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\r\u001a\u00020\u0005HÆ\u0003J(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000b¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$DELETE_SUCCESS;", "T", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "data", "isFromServer", "", "<init>", "(Ljava/lang/Object;Z)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "()Z", "component1", "component2", "copy", "(Ljava/lang/Object;Z)Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$DELETE_SUCCESS;", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class DELETE_SUCCESS<T> extends CashInOutUiState<T> {
        private final T data;
        private final boolean isFromServer;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ DELETE_SUCCESS copy$default(DELETE_SUCCESS delete_success, Object obj, boolean z, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = delete_success.data;
            }
            if ((i & 2) != 0) {
                z = delete_success.isFromServer;
            }
            return delete_success.copy(obj, z);
        }

        public final T component1() {
            return this.data;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsFromServer() {
            return this.isFromServer;
        }

        public final DELETE_SUCCESS<T> copy(T data, boolean isFromServer) {
            return new DELETE_SUCCESS<>(data, isFromServer);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DELETE_SUCCESS)) {
                return false;
            }
            DELETE_SUCCESS delete_success = (DELETE_SUCCESS) other;
            return Intrinsics.areEqual(this.data, delete_success.data) && this.isFromServer == delete_success.isFromServer;
        }

        public int hashCode() {
            T t = this.data;
            return ((t == null ? 0 : t.hashCode()) * 31) + Boolean.hashCode(this.isFromServer);
        }

        public String toString() {
            return "DELETE_SUCCESS(data=" + this.data + ", isFromServer=" + this.isFromServer + ')';
        }

        public DELETE_SUCCESS(T t, boolean z) {
            super(null);
            this.data = t;
            this.isFromServer = z;
        }

        public /* synthetic */ DELETE_SUCCESS(Object obj, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i & 2) != 0 ? true : z);
        }

        public final T getData() {
            return this.data;
        }

        public final boolean isFromServer() {
            return this.isFromServer;
        }
    }

    /* JADX INFO: compiled from: CashInOutUiState.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ERROR;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class ERROR extends CashInOutUiState {
        private final String message;

        public static /* synthetic */ ERROR copy$default(ERROR error, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = error.message;
            }
            return error.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final ERROR copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new ERROR(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ERROR) && Intrinsics.areEqual(this.message, ((ERROR) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "ERROR(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ERROR(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: CashInOutUiState.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState$ExpenseEntered;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "", "expenseEntered", "", "<init>", "(Z)V", "getExpenseEntered", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class ExpenseEntered extends CashInOutUiState {
        private final boolean expenseEntered;

        public static /* synthetic */ ExpenseEntered copy$default(ExpenseEntered expenseEntered, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = expenseEntered.expenseEntered;
            }
            return expenseEntered.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getExpenseEntered() {
            return this.expenseEntered;
        }

        public final ExpenseEntered copy(boolean expenseEntered) {
            return new ExpenseEntered(expenseEntered);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ExpenseEntered) && this.expenseEntered == ((ExpenseEntered) other).expenseEntered;
        }

        public int hashCode() {
            return Boolean.hashCode(this.expenseEntered);
        }

        public String toString() {
            return "ExpenseEntered(expenseEntered=" + this.expenseEntered + ')';
        }

        public ExpenseEntered(boolean z) {
            super(null);
            this.expenseEntered = z;
        }

        public final boolean getExpenseEntered() {
            return this.expenseEntered;
        }
    }
}
