.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;
.super Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;
.source "TranAospCloudEngineCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudEngineCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileSate"    # Z
    .param p3, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    .line 62
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getCloudEngineCallback()Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;->onUpdate(Ljava/lang/String;ZLjava/lang/String;)V

    .line 64
    goto :goto_1

    .line 66
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    return-void
.end method
