package tech.thdev.network.flowcalladapterfactory;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import retrofit2.CallAdapter;
import retrofit2.Response;
import retrofit2.Retrofit;
import tech.thdev.network.flowcalladapterfactory.internal.BodyCallAdapter;
import tech.thdev.network.flowcalladapterfactory.internal.ResponseCallAdapter;

/* JADX INFO: compiled from: FlowCallAdapterFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0002\u0010\f¨\u0006\r"}, m2722d2 = {"Ltech/thdev/network/flowcalladapterfactory/FlowCallAdapterFactory;", "Lretrofit2/CallAdapter$Factory;", "()V", "get", "Lretrofit2/CallAdapter;", "returnType", "Ljava/lang/reflect/Type;", "annotations", "", "", "retrofit", "Lretrofit2/Retrofit;", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;", "flow-call-adapter-factory_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class FlowCallAdapterFactory extends CallAdapter.Factory {
    @Override // retrofit2.CallAdapter.Factory
    public CallAdapter<?, ?> get(Type returnType, Annotation[] annotations, Retrofit retrofit) {
        Intrinsics.checkNotNullParameter(returnType, "returnType");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(retrofit, "retrofit");
        if (!Intrinsics.areEqual(Flow.class, CallAdapter.Factory.getRawType(returnType))) {
            return null;
        }
        if (!(returnType instanceof ParameterizedType)) {
            throw new IllegalStateException("Flow return type must be parameterized as Flow<Foo>");
        }
        Type responseType = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) returnType);
        if (Intrinsics.areEqual(CallAdapter.Factory.getRawType(responseType), Response.class)) {
            if (!(responseType instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<out Foo>");
            }
            Type parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) responseType);
            Intrinsics.checkNotNullExpressionValue(parameterUpperBound, "getParameterUpperBound(0, responseType)");
            return new ResponseCallAdapter(parameterUpperBound);
        }
        Intrinsics.checkNotNullExpressionValue(responseType, "responseType");
        return new BodyCallAdapter(responseType);
    }
}
