package com.amplitude.core.events;

import com.amplitude.common.jvm.ConsoleLogger;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jacoco.core.runtime.AgentOptions;

/* JADX INFO: compiled from: Identify.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\u0012\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0000J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\u001e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\u001f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010 \u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010!\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0001J!\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010\"\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ!\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\u0010\u0015J!\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013¢\u0006\u0002\u0010\u0016J!\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013¢\u0006\u0002\u0010\u0017J!\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\u0002\u0010\u0018J!\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\u0010\u0019J!\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0002\u0010\u001aJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0014J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000fJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0011J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bJ\"\u0010#\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u001cJ\"\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010\f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, m2722d2 = {"Lcom/amplitude/core/events/Identify;", "", "()V", "_properties", "", "", "properties", "getProperties", "()Ljava/util/Map;", "propertySet", "", "add", "property", "value", "", "", "", "", AgentOptions.APPEND, "", "", "(Ljava/lang/String;[Ljava/lang/Boolean;)Lcom/amplitude/core/events/Identify;", "(Ljava/lang/String;[Ljava/lang/Double;)Lcom/amplitude/core/events/Identify;", "(Ljava/lang/String;[Ljava/lang/Float;)Lcom/amplitude/core/events/Identify;", "(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/amplitude/core/events/Identify;", "(Ljava/lang/String;[Ljava/lang/Long;)Lcom/amplitude/core/events/Identify;", "(Ljava/lang/String;[Ljava/lang/String;)Lcom/amplitude/core/events/Identify;", "", "", "clearAll", "postInsert", "preInsert", "prepend", "remove", SvgConstants.Tags.SET, "setOnce", "setUserProperty", "", "operation", "Lcom/amplitude/core/events/IdentifyOperation;", CommonCssConstants.UNSET, "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Identify {
    public static final String UNSET_VALUE = "-";
    private final Set<String> propertySet = new LinkedHashSet();
    private final Map<String, Object> _properties = new LinkedHashMap();

    public final synchronized Map<String, Object> getProperties() {
        Map<String, Object> mutableMap;
        mutableMap = MapsKt.toMutableMap(this._properties);
        for (Map.Entry<String, Object> entry : mutableMap.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Map) {
                mutableMap.put(key, MapsKt.toMutableMap((Map) value));
            }
        }
        return mutableMap;
    }

    public final Identify set(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify set(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET, property, Double.valueOf(value));
        return this;
    }

    public final Identify set(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET, property, Float.valueOf(value));
        return this;
    }

    public final Identify set(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET, property, Integer.valueOf(value));
        return this;
    }

    public final Identify set(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET, property, Long.valueOf(value));
        return this;
    }

    public final Identify set(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify set(String property, Object value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET, property, value);
        return this;
    }

    public final Identify setOnce(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET_ONCE, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify setOnce(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET_ONCE, property, Double.valueOf(value));
        return this;
    }

    public final Identify setOnce(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET_ONCE, property, Float.valueOf(value));
        return this;
    }

    public final Identify setOnce(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET_ONCE, property, Integer.valueOf(value));
        return this;
    }

    public final Identify setOnce(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.SET_ONCE, property, Long.valueOf(value));
        return this;
    }

    public final Identify setOnce(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify setOnce(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.SET_ONCE, property, value);
        return this;
    }

    public final Identify prepend(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PREPEND, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify prepend(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PREPEND, property, Double.valueOf(value));
        return this;
    }

    public final Identify prepend(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PREPEND, property, Float.valueOf(value));
        return this;
    }

    public final Identify prepend(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PREPEND, property, Integer.valueOf(value));
        return this;
    }

    public final Identify prepend(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PREPEND, property, Long.valueOf(value));
        return this;
    }

    public final Identify prepend(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify prepend(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PREPEND, property, value);
        return this;
    }

    public final Identify append(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.APPEND, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify append(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.APPEND, property, Double.valueOf(value));
        return this;
    }

    public final Identify append(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.APPEND, property, Float.valueOf(value));
        return this;
    }

    public final Identify append(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.APPEND, property, Integer.valueOf(value));
        return this;
    }

    public final Identify append(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.APPEND, property, Long.valueOf(value));
        return this;
    }

    public final Identify append(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify append(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.APPEND, property, value);
        return this;
    }

    public final Identify postInsert(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.POST_INSERT, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify postInsert(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.POST_INSERT, property, Double.valueOf(value));
        return this;
    }

    public final Identify postInsert(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.POST_INSERT, property, Float.valueOf(value));
        return this;
    }

    public final Identify postInsert(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.POST_INSERT, property, Integer.valueOf(value));
        return this;
    }

    public final Identify postInsert(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.POST_INSERT, property, Long.valueOf(value));
        return this;
    }

    public final Identify postInsert(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify postInsert(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.POST_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify preInsert(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, Double.valueOf(value));
        return this;
    }

    public final Identify preInsert(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, Float.valueOf(value));
        return this;
    }

    public final Identify preInsert(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, Integer.valueOf(value));
        return this;
    }

    public final Identify preInsert(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, Long.valueOf(value));
        return this;
    }

    public final Identify preInsert(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify preInsert(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.PRE_INSERT, property, value);
        return this;
    }

    public final Identify remove(String property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.REMOVE, property, Boolean.valueOf(value));
        return this;
    }

    public final Identify remove(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.REMOVE, property, Double.valueOf(value));
        return this;
    }

    public final Identify remove(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.REMOVE, property, Float.valueOf(value));
        return this;
    }

    public final Identify remove(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.REMOVE, property, Integer.valueOf(value));
        return this;
    }

    public final Identify remove(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.REMOVE, property, Long.valueOf(value));
        return this;
    }

    public final Identify remove(String property, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, Map<String, ? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, Boolean[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, Double[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, Float[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, Integer[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, Long[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify remove(String property, String[] value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(IdentifyOperation.REMOVE, property, value);
        return this;
    }

    public final Identify add(String property, double value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.ADD, property, Double.valueOf(value));
        return this;
    }

    public final Identify add(String property, float value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.ADD, property, Float.valueOf(value));
        return this;
    }

    public final Identify add(String property, int value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.ADD, property, Integer.valueOf(value));
        return this;
    }

    public final Identify add(String property, long value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.ADD, property, Long.valueOf(value));
        return this;
    }

    public final Identify unset(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        setUserProperty(IdentifyOperation.UNSET, property, UNSET_VALUE);
        return this;
    }

    public final synchronized Identify clearAll() {
        this._properties.clear();
        this._properties.put(IdentifyOperation.CLEAR_ALL.getOperationType(), UNSET_VALUE);
        return this;
    }

    private final synchronized void setUserProperty(IdentifyOperation operation, String property, Object value) {
        if (property.length() == 0) {
            ConsoleLogger.INSTANCE.getLogger().warn("Attempting to perform operation " + operation.getOperationType() + " with a null or empty string property, ignoring");
            return;
        }
        if (value == null) {
            ConsoleLogger.INSTANCE.getLogger().warn("Attempting to perform operation " + operation.getOperationType() + " with null value for property " + property + ", ignoring");
            return;
        }
        if (this._properties.containsKey(IdentifyOperation.CLEAR_ALL.getOperationType())) {
            ConsoleLogger.INSTANCE.getLogger().warn("This Identify already contains a $clearAll operation, ignoring operation %s");
            return;
        }
        if (this.propertySet.contains(property)) {
            ConsoleLogger.INSTANCE.getLogger().warn("Already used property " + property + " in previous operation, ignoring operation " + operation.getOperationType());
            return;
        }
        if (!this._properties.containsKey(operation.getOperationType())) {
            this._properties.put(operation.getOperationType(), new LinkedHashMap());
        }
        Object obj = this._properties.get(operation.getOperationType());
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any>");
        }
        TypeIntrinsics.asMutableMap(obj).put(property, value);
        this.propertySet.add(property);
    }
}
