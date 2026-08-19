package com.google.firebase.crashlytics.internal;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.gms.tasks.zzw;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public class CrashlyticsWorker {
    private final ExecutorService executor;
    private final Object tailLock = new Object();
    private Task<?> tail = Tasks.forResult(null);

    static /* synthetic */ void lambda$await$5() {
    }

    public CrashlyticsWorker(ExecutorService executorService) {
        this.executor = executorService;
    }

    public ExecutorService getExecutor() {
        return this.executor;
    }

    public <T> Task<T> submit(final Callable<T> callable) {
        zzw zzwVar;
        synchronized (this.tailLock) {
            if (this.tail.isCanceled()) {
                this.tail = this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsWorker$$ExternalSyntheticLambda3
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        return Tasks.forResult(null);
                    }
                });
            }
            zzwVar = (Task<T>) this.tail.continueWith(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsWorker$$ExternalSyntheticLambda4
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return callable.call();
                }
            });
            this.tail = zzwVar;
        }
        return zzwVar;
    }

    public Task<Void> submit(final Runnable runnable) {
        Task taskContinueWith;
        synchronized (this.tailLock) {
            if (this.tail.isCanceled()) {
                this.tail = this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsWorker$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        return Tasks.forResult(null);
                    }
                });
            }
            taskContinueWith = this.tail.continueWith(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsWorker$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submit$3(runnable, task);
                }
            });
            this.tail = taskContinueWith;
        }
        return taskContinueWith;
    }

    static /* synthetic */ Void lambda$submit$3(Runnable runnable, Task task) throws Exception {
        runnable.run();
        return null;
    }

    public <T> Task<T> submitTask(final Callable<Task<T>> callable) {
        zzw zzwVar;
        synchronized (this.tailLock) {
            zzwVar = (Task<T>) this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsWorker$$ExternalSyntheticLambda5
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submitTask$4(callable, task);
                }
            });
            this.tail = zzwVar;
        }
        return zzwVar;
    }

    static /* synthetic */ Task lambda$submitTask$4(Callable callable, Task task) throws Exception {
        return (Task) callable.call();
    }

    public void await() throws ExecutionException, InterruptedException {
        Tasks.await(submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsWorker$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CrashlyticsWorker.lambda$await$5();
            }
        }));
    }
}
