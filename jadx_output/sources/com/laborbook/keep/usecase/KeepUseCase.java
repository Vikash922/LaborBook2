package com.laborbook.keep.usecase;

import android.content.Context;
import com.boilerplate.network.model.NetworkResult;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.keep.model.AddAdvanceRequestBody;
import com.laborbook.keep.model.AddOrUpdateSalaryRequestBody;
import com.laborbook.keep.model.AddStaffUserRequestBody;
import com.laborbook.keep.model.AddStaffUserResponse;
import com.laborbook.keep.model.AddStaffUsersRequestBody;
import com.laborbook.keep.model.CurrentSalaryResponse;
import com.laborbook.keep.model.GetUserResponse;
import com.laborbook.keep.model.MarkBulkAttendanceRequestBody;
import com.laborbook.keep.model.MarkSingleAttendanceRequestBody;
import com.laborbook.keep.model.SalaryData;
import com.laborbook.keep.model.StaffAttendanceResponse;
import com.laborbook.keep.model.StaffUserResponseModel;
import com.laborbook.keep.model.UpdateUserNameRequestBody;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: KeepUseCase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H¦@¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\t\"\u00020\u0004H¦@¢\u0006\u0002\u0010\nJ$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\u0005J$\u0010\u0012\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010\u0018J4\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010\u001dJ,\u0010\u001e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H¦@¢\u0006\u0002\u0010!J,\u0010\"\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020#H¦@¢\u0006\u0002\u0010$J$\u0010%\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010&\u001a\u00020'H¦@¢\u0006\u0002\u0010(J$\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u00140\u00132\u0006\u0010+\u001a\u00020,H¦@¢\u0006\u0002\u0010-J$\u0010.\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010\u0018J,\u0010/\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001000\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00101\u001a\u000202H¦@¢\u0006\u0002\u00103J$\u00104\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001000\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010\u0018J,\u00105\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00106\u001a\u000207H¦@¢\u0006\u0002\u00108JD\u00109\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010:\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u00172\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010@J4\u0010A\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010:\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010\u001dJ,\u0010B\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00140\u00132\u0006\u0010:\u001a\u00020\u00172\u0006\u0010C\u001a\u00020DH¦@¢\u0006\u0002\u0010EJ4\u0010F\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010G0\u00140\u00132\u0006\u0010:\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020H2\u0006\u0010\u001c\u001a\u00020HH¦@¢\u0006\u0002\u0010IJ$\u0010J\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010K0\u00140\u00132\u0006\u0010:\u001a\u00020\u0017H¦@¢\u0006\u0002\u0010\u0018¨\u0006L"}, m2722d2 = {"Lcom/laborbook/keep/usecase/KeepUseCase;", "", "getAllContacts", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertContacts", "", ConstantEventNames.CONTACTS, "", "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadContacts", "context", "Landroid/content/Context;", "shouldHardRefresh", "", "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllContacts", "getStaffs", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "id", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserAttendances", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markBulkAttendance", "markAttendanceBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markSingleAttendance", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUsers", "staffUsers", "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUser", "Lcom/laborbook/keep/model/AddStaffUserResponse;", "staffUser", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteStaffUser", "updateUserName", "Lcom/laborbook/keep/model/GetUserResponse;", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUser", "addAdvance", "addAdvanceRequestBody", "Lcom/laborbook/keep/model/AddAdvanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOvertime", "userId", "date", "otMinutes", "", "otPerHour", "managerId", "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOvertime", "addOrUpdateSalary", SDKConstants.PARAM_A2U_BODY, "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSalary", "Lcom/laborbook/keep/model/SalaryData;", "", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCurrentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface KeepUseCase {
    Object addAdvance(String str, AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object addOrUpdateSalary(String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object addOvertime(String str, String str2, double d, double d2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object addStaffUser(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super Flow<NetworkResult<AddStaffUserResponse>>> continuation);

    Object addStaffUsers(AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object deleteAllContacts(Continuation<? super Unit> continuation);

    Object deleteOvertime(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object deleteStaffUser(String str, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object getAllContacts(Continuation<? super List<ContactItem>> continuation);

    Object getCurrentSalary(String str, Continuation<? super Flow<NetworkResult<CurrentSalaryResponse>>> continuation);

    Object getStaffs(String str, Continuation<? super Flow<NetworkResult<StaffUserResponseModel>>> continuation);

    Object getUser(String str, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation);

    Object getUserAttendances(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<StaffAttendanceResponse>>> continuation);

    Object getUserSalary(String str, int i, int i2, Continuation<? super Flow<NetworkResult<SalaryData>>> continuation);

    Object insertContacts(ContactItem[] contactItemArr, Continuation<? super Unit> continuation);

    Object loadContacts(Context context, boolean z, Continuation<? super List<ContactItem>> continuation);

    Object markBulkAttendance(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object markSingleAttendance(String str, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object updateUserName(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation);
}
