.class public Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;
.super Ljava/lang/Object;
.source "TranResMonitorManager.java"


# static fields
.field private static final ADAPTER_EXCEPTION:Ljava/lang/String; = "adapter is Null"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    .line 281
    new-instance v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubResMonitorManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospResMonitorManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cleanService()V
    .locals 1

    .line 278
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->clean()V

    .line 279
    return-void
.end method

.method public static getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 239
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 240
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 244
    return-void

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 3
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 264
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 265
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 269
    return-void

    .line 266
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 3
    .param p0, "event"    # Landroid/os/Bundle;
    .param p1, "events"    # [Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 168
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getEventStatic(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 112
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventStatic(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    .locals 1

    .line 273
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    return-object v0
.end method

.method public static regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 8
    .param p0, "event"    # I
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p2, "cpuThreshold"    # I
    .param p3, "memoryThreshold"    # I
    .param p4, "storageThreshold"    # I
    .param p5, "IOWaitThreshold"    # I

    .line 52
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v7

    .line 53
    .local v7, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v7, :cond_0

    .line 56
    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    .line 58
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "adapter is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 3
    .param p0, "event"    # Landroid/os/Bundle;
    .param p1, "events"    # [Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 197
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    .line 201
    return-void

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setEventStatic(ILjava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEventStatic(ILjava/lang/String;)V

    .line 144
    return-void

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 85
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getService()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    .line 86
    .local v0, "adapter":Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "adapter is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 225
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 229
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 2
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 252
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 256
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p3, "cpuThreshold"    # I
    .param p4, "memoryThreshold"    # I
    .param p5, "storageThreshold"    # I
    .param p6, "IOWaitThreshold"    # I

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 76
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEvent(ILjava/lang/String;)V

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    .line 215
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 97
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->mService:Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;->unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    .line 101
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
