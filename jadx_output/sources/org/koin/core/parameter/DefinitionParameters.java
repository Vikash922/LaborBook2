package org.koin.core.parameter;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.error.DefinitionParameterException;
import org.koin.core.error.NoParameterFoundException;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: DefinitionParameters.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u0000 (2\u00020\u0001:\u0001(B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0001J\u0016\u0010\u000b\u001a\u0002H\f\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\n¢\u0006\u0002\u0010\rJ\u0016\u0010\u000e\u001a\u0002H\f\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\n¢\u0006\u0002\u0010\rJ\u0016\u0010\u000f\u001a\u0002H\f\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\n¢\u0006\u0002\u0010\rJ\u0016\u0010\u0010\u001a\u0002H\f\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\n¢\u0006\u0002\u0010\rJ\u0016\u0010\u0011\u001a\u0002H\f\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\n¢\u0006\u0002\u0010\rJ'\u0010\u0012\u001a\u0002H\f\"\u0004\b\u0000\u0010\f2\u0006\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0016¢\u0006\u0002\u0010\u0017J\u001a\u0010\u0018\u001a\u0002H\f\"\n\b\u0000\u0010\f\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0002\u0010\rJ\u001c\u0010\u0018\u001a\u0002H\f\"\u0004\b\u0000\u0010\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0086\u0002¢\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u0004\u0018\u0001H\f\"\u0004\b\u0000\u0010\f2\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0016¢\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u0001J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fJ!\u0010!\u001a\u00020\"\"\u0004\b\u0000\u0010\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010#\u001a\u0002H\f¢\u0006\u0002\u0010$J\u0006\u0010%\u001a\u00020\u0014J\b\u0010&\u001a\u00020'H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006)"}, m2722d2 = {"Lorg/koin/core/parameter/DefinitionParameters;", "", "_values", "", "(Ljava/util/List;)V", "values", "", "getValues", "()Ljava/util/List;", "add", "value", "component1", "T", "()Ljava/lang/Object;", "component2", "component3", "component4", "component5", "elementAt", "i", "", "clazz", "Lkotlin/reflect/KClass;", "(ILkotlin/reflect/KClass;)Ljava/lang/Object;", "get", "(I)Ljava/lang/Object;", "getOrNull", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "insert", FirebaseAnalytics.Param.INDEX, "isEmpty", "", "isNotEmpty", SvgConstants.Tags.SET, "", SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "(ILjava/lang/Object;)V", "size", InAppPurchaseConstants.METHOD_TO_STRING, "", "Companion", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class DefinitionParameters {
    public static final int MAX_PARAMS = 5;
    private final List<Object> _values;

    /* JADX WARN: Multi-variable type inference failed */
    public DefinitionParameters() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public DefinitionParameters(List<Object> _values) {
        Intrinsics.checkNotNullParameter(_values, "_values");
        this._values = _values;
    }

    public /* synthetic */ DefinitionParameters(ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : arrayList);
    }

    public final List<Object> getValues() {
        return this._values;
    }

    public <T> T elementAt(int i, KClass<?> clazz) throws NoParameterFoundException {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (this._values.size() > i) {
            return (T) this._values.get(i);
        }
        throw new NoParameterFoundException("Can't get injected parameter #" + i + " from " + this + " for type '" + KClassExtKt.getFullName(clazz) + '\'');
    }

    public final /* synthetic */ Object component1() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return elementAt(0, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ Object component2() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return elementAt(1, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ Object component3() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return elementAt(2, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ Object component4() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return elementAt(3, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ Object component5() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return elementAt(4, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final <T> T get(int i) {
        return (T) this._values.get(i);
    }

    public final <T> void set(int i, T t) {
        List mutableList = CollectionsKt.toMutableList((Collection) this._values);
        if (t == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
        }
        mutableList.set(i, t);
    }

    public final int size() {
        return this._values.size();
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public final boolean isNotEmpty() {
        return !isEmpty();
    }

    public final DefinitionParameters insert(int index, Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._values.add(index, value);
        return this;
    }

    public final DefinitionParameters add(Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return insert(size(), value);
    }

    public final /* synthetic */ Object get() throws DefinitionParameterException {
        Intrinsics.reifiedOperationMarker(4, "T");
        Object orNull = getOrNull(Reflection.getOrCreateKotlinClass(Object.class));
        if (orNull != null) {
            return orNull;
        }
        StringBuilder sb = new StringBuilder("No value found for type '");
        Intrinsics.reifiedOperationMarker(4, "T");
        throw new DefinitionParameterException(sb.append(KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(Object.class))).append('\'').toString());
    }

    public <T> T getOrNull(KClass<?> clazz) throws DefinitionParameterException {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        List listFilterNotNull = CollectionsKt.filterNotNull(this._values);
        ArrayList arrayList = new ArrayList();
        for (T t : listFilterNotNull) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(t.getClass()), clazz)) {
                arrayList.add(t);
            }
        }
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return (T) CollectionsKt.first((List) arrayList2);
        }
        throw new DefinitionParameterException("Ambiguous parameter injection: more than one value of type '" + KClassExtKt.getFullName(clazz) + "' to get from " + this + ". Check your injection parameters");
    }

    public String toString() {
        return Intrinsics.stringPlus("DefinitionParameters", CollectionsKt.toList(this._values));
    }
}
