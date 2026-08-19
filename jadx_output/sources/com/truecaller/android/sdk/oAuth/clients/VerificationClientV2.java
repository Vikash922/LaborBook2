package com.truecaller.android.sdk.oAuth.clients;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import androidx.fragment.app.FragmentActivity;
import com.truecaller.android.sdk.BuildConfig;
import com.truecaller.android.sdk.C3956R;
import com.truecaller.android.sdk.SdkUtils;
import com.truecaller.android.sdk.common.TrueException;
import com.truecaller.android.sdk.common.VerificationCallback;
import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.VerificationRequestManagerImpl;
import com.truecaller.android.sdk.common.callVerification.CallRejector;
import com.truecaller.android.sdk.common.callVerification.CallRejectorCompat;
import com.truecaller.android.sdk.common.callVerification.IncomingCallListener;
import com.truecaller.android.sdk.common.callbacks.MissedCallInstallationCallback;
import com.truecaller.android.sdk.common.imOtpVerification.ImOtpReceiverClientHandler;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.common.network.ProfileService;
import com.truecaller.android.sdk.common.network.RestAdapter;
import com.truecaller.android.sdk.common.network.VerificationService;
import com.truecaller.android.sdk.common.otpVerification.SmsRetrieverClientHandler;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import com.truecaller.android.sdk.oAuth.TcOAuthError;
import com.truecaller.android.sdk.oAuth.UtilsV2;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationClientV2 extends BaseClient implements VerificationRequestManager.Client {
    private Handler handler;
    private final boolean hasTruecaller;
    private ImOtpReceiverClientHandler imOtpReceiverClientHandler;
    private IncomingCallListener incomingCallListener;
    private final CallRejector mCallRejector;
    private final VerificationRequestManager mPresenter;

    public VerificationClientV2(Context context, String str, TcOAuthCallback tcOAuthCallback, boolean z) {
        super(context, str, tcOAuthCallback, 2);
        this.hasTruecaller = z;
        String string = context.getString(C3956R.string.sdk_variant);
        String string2 = context.getString(C3956R.string.sdk_variant_version);
        this.mPresenter = new VerificationRequestManagerImpl(this, (ProfileService) RestAdapter.createService(ProfileService.BASE_URL, ProfileService.class, BuildConfig.TRUESDK_OAUTH_VERSION, string, string2), (VerificationService) RestAdapter.createService(VerificationService.BASE_URL_OAUTH, VerificationService.class, BuildConfig.TRUESDK_OAUTH_VERSION, string, string2), tcOAuthCallback, new SmsRetrieverClientHandler(this.mAppContext));
        this.mCallRejector = CallRejectorCompat.getCallRejectorInstance(context);
        this.imOtpReceiverClientHandler = new ImOtpReceiverClientHandler(this.mAppContext);
    }

    public static VerificationClientV2 createInstanceForFallback(Context context, String str, TcOAuthCallback tcOAuthCallback, Activity activity, TcOAuthError tcOAuthError) {
        VerificationClientV2 verificationClientV2 = new VerificationClientV2(context, str, tcOAuthCallback, true);
        SdkUtils.showDisclaimer(activity);
        tcOAuthCallback.onVerificationRequired(tcOAuthError);
        return verificationClientV2;
    }

    public void checkClientInstallation(String str, String str2, VerificationCallback verificationCallback, FragmentActivity fragmentActivity) {
        SdkUtils.dismissDisclaimerMaybe(fragmentActivity);
        if (!SdkUtils.isValidNumber(str2)) {
            throw new RuntimeException(TrueException.TYPE_INVALID_NUMBER);
        }
        this.mPresenter.enqueueCheckInstallation(getState(), getClientId(), str, str2, getDeviceId(fragmentActivity), this.hasTruecaller, verificationCallback, UtilsV2.getApplicationSignature(fragmentActivity));
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public String getDeviceId(FragmentActivity fragmentActivity) {
        return SdkUtils.getDeviceId(fragmentActivity);
    }

    private boolean isPhoneStatePermissionEnabled() {
        return isPermissionEnabled("android.permission.READ_PHONE_STATE");
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public boolean isDesiredPermissionEnabled() {
        return isPhoneStatePermissionEnabled() && isPermissionEnabled("android.permission.READ_CALL_LOG") && isAnswerCallPermissionEnabled();
    }

    private boolean isAnswerCallPermissionEnabled() {
        if (Build.VERSION.SDK_INT < 26) {
            return isPermissionEnabled("android.permission.CALL_PHONE");
        }
        return isPermissionEnabled("android.permission.ANSWER_PHONE_CALLS");
    }

    private boolean isPermissionEnabled(String str) {
        return this.mAppContext.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public void registerIncomingCallReceiver(MissedCallInstallationCallback missedCallInstallationCallback) {
        TelephonyManager telephonyManager = (TelephonyManager) this.mAppContext.getSystemService("phone");
        IncomingCallListener incomingCallListener = new IncomingCallListener(missedCallInstallationCallback);
        this.incomingCallListener = incomingCallListener;
        telephonyManager.listen(incomingCallListener, 32);
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public void rejectCall() {
        this.mCallRejector.reject();
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public void unRegisterIncomingCallReceiver() {
        ((TelephonyManager) this.mAppContext.getSystemService("phone")).listen(this.incomingCallListener, 0);
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public int getSimState() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mAppContext.getSystemService("phone");
        if (telephonyManager == null) {
            return 0;
        }
        return telephonyManager.getSimState();
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public boolean isAirplaneModeDisabled() {
        return Settings.Global.getInt(this.mAppContext.getContentResolver(), "airplane_mode_on", 0) == 0;
    }

    public void verifyOtpInstallation(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        this.mPresenter.enqueueVerificationAndCreateProfile(trueProfile, str, getClientId(), verificationCallback);
    }

    public void notifyOtpAuthenticationRequired(Activity activity) {
        SdkUtils.showDisclaimer(activity);
        this.mPresenter.notifyAuthenticationRequired();
    }

    public void verifyMissedCallInstallation(TrueProfile trueProfile, VerificationCallback verificationCallback) {
        this.mPresenter.enqueueMissedCallVerification(trueProfile, getClientId(), verificationCallback);
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public void registerImOtpReceiver(VerificationCallback verificationCallback, long j) {
        ImOtpReceiverClientHandler imOtpReceiverClientHandler = this.imOtpReceiverClientHandler;
        if (imOtpReceiverClientHandler != null) {
            imOtpReceiverClientHandler.registerReceiver(verificationCallback, SdkUtils.getAction(getClientId(), getState()));
            this.imOtpReceiverClientHandler.startCountDownTimer(j);
        }
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager.Client
    public Handler getHandler() {
        if (this.handler == null) {
            this.handler = new Handler();
        }
        return this.handler;
    }

    private void clearImOtpReceiverClientHandler() {
        ImOtpReceiverClientHandler imOtpReceiverClientHandler = this.imOtpReceiverClientHandler;
        if (imOtpReceiverClientHandler != null) {
            imOtpReceiverClientHandler.unregisterReceiver();
            this.imOtpReceiverClientHandler.stopCountDownTimer();
            this.imOtpReceiverClientHandler = null;
        }
    }

    public void clear() {
        clearImOtpReceiverClientHandler();
        if (this.incomingCallListener != null) {
            unRegisterIncomingCallReceiver();
            this.incomingCallListener = null;
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
    }
}
