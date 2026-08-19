package com.google.firebase.remoteconfig;

/* JADX INFO: loaded from: classes.dex */
public interface FirebaseRemoteConfigInfo {
    FirebaseRemoteConfigSettings getConfigSettings();

    long getFetchTimeMillis();

    int getLastFetchStatus();
}
