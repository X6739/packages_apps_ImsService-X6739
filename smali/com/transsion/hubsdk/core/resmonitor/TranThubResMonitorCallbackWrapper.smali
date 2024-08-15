.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;
.super Ljava/lang/Object;
.source "TranThubResMonitorCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static regCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 9
    .param p0, "service"    # Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;
    .param p1, "event"    # I
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p3, "cpuThreshold"    # I
    .param p4, "memoryThreshold"    # I
    .param p5, "storageThreshold"    # I
    .param p6, "IOWaitThreshold"    # I

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$1;)V

    .line 31
    .local v0, "callbackInfo":Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    .line 32
    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;-><init>()V

    .line 33
    .local v1, "resMonitorCallback":Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V

    .line 34
    sget-object v2, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    if-eqz p0, :cond_0

    .line 38
    move-object v2, p0

    move v3, p1

    move-object v4, v1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    :try_start_0
    invoke-interface/range {v2 .. v8}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->regCallback(ILcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    goto :goto_1

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v4, "resmonitor reg call failed!!!"

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 44
    :cond_0
    move v2, p1

    move-object v3, v1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v2 .. v7}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->regCallbackStatic(ILcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;IIII)V

    .line 47
    :goto_1
    return-void
.end method

.method public static unregCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 4
    .param p0, "service"    # Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 51
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;

    .line 52
    .local v1, "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->unregCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v3, "resmonitor unreg call failed!!!"

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->unregCallbackStatic(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V

    .line 62
    :goto_2
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    goto :goto_3

    .line 65
    .end local v1    # "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
    :cond_1
    goto :goto_0

    .line 66
    :cond_2
    :goto_3
    return-void
.end method
