.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$ResMonitorCallback;
.super Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback$Stub;
.source "TranThubResMonitorCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResMonitorCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;

    .line 73
    .local v1, "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;->onEvent(ILjava/lang/String;)V

    .line 75
    goto :goto_1

    .line 77
    .end local v1    # "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    return-void
.end method
