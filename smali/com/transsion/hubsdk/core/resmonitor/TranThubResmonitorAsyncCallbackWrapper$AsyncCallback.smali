.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$AsyncCallback;
.super Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback$Stub;
.source "TranThubResmonitorAsyncCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncCallback(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;

    .line 70
    .local v1, "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onAsyncCallback(ILjava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 75
    .end local v1    # "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    return-void
.end method

.method public onBundleAsyncCallback(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;

    .line 81
    .local v1, "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onBundleAsyncCallback(ILandroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 86
    .end local v1    # "info":Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    return-void
.end method
