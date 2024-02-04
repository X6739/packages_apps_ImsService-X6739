.class public Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;
.super Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback$Stub;
.source "TranThubCloudEngineCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudEngineCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileState"    # Z
    .param p3, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;

    .line 55
    .local v1, "info":Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;->onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 59
    .end local v1    # "info":Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api call back error!!!"

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
