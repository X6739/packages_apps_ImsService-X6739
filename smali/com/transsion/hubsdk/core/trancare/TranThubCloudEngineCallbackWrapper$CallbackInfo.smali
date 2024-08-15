.class final Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranThubCloudEngineCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mApiCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

.field private mCallback:Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$1;

    .line 66
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    return-object v0
.end method

.method public getCallback()Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;

    return-object v0
.end method

.method public setApiCallback(Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 0
    .param p1, "apiCallback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 75
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 76
    return-void
.end method

.method public setCallback(Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;

    .line 83
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/trancare/cloudengine/ITranCloudEngineCallback;

    .line 84
    return-void
.end method
