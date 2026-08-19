package com.google.ads.mediation.inmobi;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.inmobi.sdk.SdkInitializationListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiInitializer implements SdkInitializationListener {
    public static final int INITIALIZED = 2;
    public static final int INITIALIZING = 1;
    public static final int UNINITIALIZED = 0;
    private static InMobiInitializer instance;
    private final InMobiSdkWrapper inMobiSdkWrapper;
    int initializationStatus;
    final ArrayList<Listener> listeners;

    @Retention(RetentionPolicy.SOURCE)
    public @interface InitializationStatus {
    }

    public interface Listener {
        void onInitializeError(AdError adError);

        void onInitializeSuccess();
    }

    private InMobiInitializer() {
        this.listeners = new ArrayList<>();
        this.initializationStatus = 0;
        this.inMobiSdkWrapper = new InMobiSdkWrapper();
    }

    public static InMobiInitializer getInstance() {
        if (instance == null) {
            instance = new InMobiInitializer();
        }
        return instance;
    }

    InMobiInitializer(InMobiSdkWrapper inMobiSdkWrapper) {
        this.listeners = new ArrayList<>();
        this.initializationStatus = 0;
        this.inMobiSdkWrapper = inMobiSdkWrapper;
    }

    public void init(Context context, String str, Listener listener) {
        if (this.initializationStatus == 2) {
            listener.onInitializeSuccess();
            return;
        }
        this.listeners.add(listener);
        if (this.initializationStatus == 1) {
            return;
        }
        this.initializationStatus = 1;
        this.inMobiSdkWrapper.init(context, str, InMobiConsent.getConsentObj(), this);
    }

    @Override // com.inmobi.sdk.SdkInitializationListener
    public void onInitializationComplete(Error error) {
        if (error == null) {
            Log.d(InMobiMediationAdapter.TAG, "InMobi SDK initialized.");
            this.initializationStatus = 2;
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onInitializeSuccess();
            }
        } else {
            this.initializationStatus = 0;
            AdError adErrorCreateAdapterError = InMobiConstants.createAdapterError(101, error.getLocalizedMessage());
            Iterator<Listener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().onInitializeError(adErrorCreateAdapterError);
            }
        }
        this.listeners.clear();
    }
}
