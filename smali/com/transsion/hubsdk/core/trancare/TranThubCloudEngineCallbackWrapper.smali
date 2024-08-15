.class public Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;
.super Ljava/lang/Object;
.source "TranThubCloudEngineCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$1;)V

    .line 28
    .local v0, "callbackInfo":Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 30
    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CloudEngineCallback;-><init>()V

    .line 32
    .local v1, "cloudEngineCallback":Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;)V

    .line 33
    sget-object v2, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {p0, p1, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;)V

    .line 36
    return-void
.end method

.method public static unregCloudEngineCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;

    .line 41
    .local v1, "info":Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->unregCloudEngineCallback(Ljava/lang/String;Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;)V

    .line 44
    goto :goto_1

    .line 46
    .end local v1    # "info":Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    return-void
.end method
