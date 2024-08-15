.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;
.super Ljava/lang/Object;
.source "TranThubResmonitorAsyncCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static getEventAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 5
    .param p0, "service"    # Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 29
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$1;)V

    .line 30
    .local v0, "callbackInfo":Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 31
    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;-><init>()V

    .line 32
    .local v1, "asyncCallback":Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 33
    sget-object v2, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {p0, p1, p2, v1}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    goto :goto_1

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v4, "getEventAsync error!!!"

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1, p2, v1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 44
    :goto_1
    return-void
.end method

.method public static getEventBundleAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 5
    .param p0, "service"    # Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 48
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$1;)V

    .line 49
    .local v0, "callbackInfo":Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 50
    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;-><init>()V

    .line 51
    .local v1, "asyncCallback":Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 52
    sget-object v2, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0, p1, v1}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    goto :goto_1

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v4, "getEventBundleAsync error!!!"

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1, v1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 63
    :goto_1
    return-void
.end method
