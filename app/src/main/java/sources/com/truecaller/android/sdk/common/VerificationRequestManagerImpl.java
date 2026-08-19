package com.truecaller.android.sdk.common;

import com.truecaller.android.sdk.common.VerificationRequestManager;
import com.truecaller.android.sdk.common.callbacks.CreateProfileCallback;
import com.truecaller.android.sdk.common.callbacks.FetchProfileCallback;
import com.truecaller.android.sdk.common.callbacks.ImOtpCallInstallationCallback;
import com.truecaller.android.sdk.common.callbacks.MissedCallInstallationCallback;
import com.truecaller.android.sdk.common.callbacks.VerifyInstallationCallback;
import com.truecaller.android.sdk.common.models.CreateInstallationModel;
import com.truecaller.android.sdk.common.models.TrueProfile;
import com.truecaller.android.sdk.common.models.VerifyInstallationModel;
import com.truecaller.android.sdk.common.network.ProfileService;
import com.truecaller.android.sdk.common.network.VerificationService;
import com.truecaller.android.sdk.common.otpVerification.SmsRetrieverClientHandler;
import com.truecaller.android.sdk.legacy.ITrueCallback;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationRequestManagerImpl implements VerificationRequestManager {
    private final String NAME_REGEX_PATTERN;
    private final boolean isOAuthFlow;
    private final VerificationRequestManager.Client mClient;
    private String mCountryCode;
    private String mFingerPrint;
    private final TcOAuthCallback mOAuthCallback;
    private final Pattern mPattern;
    private String mPhoneNumber;
    private final ITrueCallback mProfileCallback;
    private final ProfileService mProfileService;
    private String mSecretToken;
    private final SmsRetrieverClientHandler mSmsRetrieverHandler;
    public long mTokenReceivedAt;
    private final VerificationService mVerificationService;
    public String mVerificationToken;

    public VerificationRequestManagerImpl(VerificationRequestManager.Client client, ProfileService profileService, VerificationService verificationService, ITrueCallback iTrueCallback, SmsRetrieverClientHandler smsRetrieverClientHandler) {
        this.NAME_REGEX_PATTERN = "^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$";
        this.mPattern = Pattern.compile("^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$");
        this.mProfileService = profileService;
        this.mVerificationService = verificationService;
        this.mClient = client;
        this.mProfileCallback = iTrueCallback;
        this.mSmsRetrieverHandler = smsRetrieverClientHandler;
        this.mOAuthCallback = null;
        this.isOAuthFlow = false;
    }

    public VerificationRequestManagerImpl(VerificationRequestManager.Client client, ProfileService profileService, VerificationService verificationService, TcOAuthCallback tcOAuthCallback, SmsRetrieverClientHandler smsRetrieverClientHandler) {
        this.NAME_REGEX_PATTERN = "^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$";
        this.mPattern = Pattern.compile("^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$");
        this.mProfileService = profileService;
        this.mVerificationService = verificationService;
        this.mClient = client;
        this.mOAuthCallback = tcOAuthCallback;
        this.mSmsRetrieverHandler = smsRetrieverClientHandler;
        this.mProfileCallback = null;
        this.isOAuthFlow = true;
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void notifyAuthenticationRequired() {
        ITrueCallback iTrueCallback = this.mProfileCallback;
        if (iTrueCallback != null) {
            iTrueCallback.onVerificationRequired(null);
            return;
        }
        TcOAuthCallback tcOAuthCallback = this.mOAuthCallback;
        if (tcOAuthCallback != null) {
            tcOAuthCallback.onVerificationRequired(null);
        }
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void enqueueCheckInstallation(String str, String str2, String str3, String str4, String str5, boolean z, VerificationCallback verificationCallback, String str6) {
        this.mPhoneNumber = str4;
        this.mCountryCode = str3;
        this.mFingerPrint = str6;
        CreateInstallationModel createInstallationModel = new CreateInstallationModel(str, str3, str4, str5, z);
        createInstallationModel.setSimState(this.mClient.getSimState());
        createInstallationModel.setAirplaneModeDisabled(this.mClient.isAirplaneModeDisabled());
        if (this.mClient.isDesiredPermissionEnabled()) {
            createInstallationModel.setPhonePermission(true);
        }
        ImOtpCallInstallationCallback imOtpCallInstallationCallback = new ImOtpCallInstallationCallback(createInstallationModel, verificationCallback, this.mSmsRetrieverHandler, false, this, this.mClient.getHandler());
        if (this.isOAuthFlow) {
            this.mVerificationService.createInstallationOAuth(str2, str6, createInstallationModel).enqueue(imOtpCallInstallationCallback);
        } else {
            this.mVerificationService.createInstallation(str2, str6, createInstallationModel).enqueue(imOtpCallInstallationCallback);
        }
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void setVerificationToken(String str, long j) {
        this.mVerificationToken = str;
        this.mTokenReceivedAt = j;
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void enqueueVerificationAndCreateProfile(TrueProfile trueProfile, String str, String str2, VerificationCallback verificationCallback) {
        if (this.mPhoneNumber != null && this.mVerificationToken != null && this.mCountryCode != null) {
            if (profileHasName(trueProfile)) {
                VerifyInstallationModel verifyInstallationModel = new VerifyInstallationModel(this.mVerificationToken, this.mPhoneNumber, this.mCountryCode, str);
                VerifyInstallationCallback verifyInstallationCallback = new VerifyInstallationCallback(str2, verifyInstallationModel, verificationCallback, trueProfile, this, true);
                if (this.isOAuthFlow) {
                    this.mVerificationService.verifyInstallationOAuth(str2, this.mFingerPrint, verifyInstallationModel).enqueue(verifyInstallationCallback);
                    return;
                } else {
                    this.mVerificationService.verifyInstallation(str2, this.mFingerPrint, verifyInstallationModel).enqueue(verifyInstallationCallback);
                    return;
                }
            }
            verificationCallback.onRequestFailure(5, new TrueException(5, "Please provide a valid name"));
            return;
        }
        verificationCallback.onRequestFailure(5, new TrueException(3, "Please call createInstallation first"));
    }

    private boolean profileHasName(TrueProfile trueProfile) {
        return hasValidFirstName(trueProfile.firstName) && hasValidLastName(trueProfile.lastName);
    }

    private boolean hasValidFirstName(String str) {
        if (str == null || str.trim().isEmpty()) {
            return false;
        }
        return matchesRegexPattern(str);
    }

    private boolean hasValidLastName(String str) {
        if (str == null) {
            return false;
        }
        if (str.trim().isEmpty()) {
            return true;
        }
        return matchesRegexPattern(str);
    }

    private boolean matchesRegexPattern(String str) {
        return this.mPattern.matcher(str).matches();
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void enqueueMissedCallVerification(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        String str2 = this.mSecretToken;
        if (str2 != null) {
            enqueueVerificationAndCreateProfile(trueProfile, str2, str, verificationCallback);
        } else {
            verificationCallback.onRequestFailure(5, new TrueException(3, "Please call createInstallation first"));
        }
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void setSecretToken(String str) {
        this.mSecretToken = str;
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void rejectCall() {
        this.mClient.rejectCall();
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void registerIncomingCallListener(MissedCallInstallationCallback missedCallInstallationCallback) {
        this.mClient.registerIncomingCallReceiver(missedCallInstallationCallback);
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void unRegisterIncomingCallListener() {
        this.mClient.unRegisterIncomingCallReceiver();
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void registerImOtpReceiver(VerificationCallback verificationCallback, long j) {
        this.mClient.registerImOtpReceiver(verificationCallback, j);
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void retryEnqueueVerifyInstallationAndCreateProfile(String str, VerifyInstallationModel verifyInstallationModel, VerifyInstallationCallback verifyInstallationCallback) {
        if (this.isOAuthFlow) {
            this.mVerificationService.verifyInstallationOAuth(str, this.mFingerPrint, verifyInstallationModel).enqueue(verifyInstallationCallback);
        } else {
            this.mVerificationService.verifyInstallation(str, this.mFingerPrint, verifyInstallationModel).enqueue(verifyInstallationCallback);
        }
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void enqueueFetchProfile(String str, String str2, VerificationCallback verificationCallback) {
        this.mProfileService.fetchProfile(String.format(ProfileService.ACCESS_TOKEN_PREFIX, str2)).enqueue(new FetchProfileCallback(str, str2, verificationCallback, this, true));
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void retryFetchProfile(String str, FetchProfileCallback fetchProfileCallback) {
        this.mProfileService.fetchProfile(String.format(ProfileService.ACCESS_TOKEN_PREFIX, str)).enqueue(fetchProfileCallback);
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void enqueueCreateProfile(String str, TrueProfile trueProfile) {
        this.mProfileService.createProfile(String.format(ProfileService.ACCESS_TOKEN_PREFIX, str), trueProfile).enqueue(new CreateProfileCallback(str, trueProfile, this, true));
    }

    @Override // com.truecaller.android.sdk.common.VerificationRequestManager
    public void retryEnqueueCreateProfile(String str, TrueProfile trueProfile, CreateProfileCallback createProfileCallback) {
        this.mProfileService.createProfile(String.format(ProfileService.ACCESS_TOKEN_PREFIX, str), trueProfile).enqueue(createProfileCallback);
    }
}
