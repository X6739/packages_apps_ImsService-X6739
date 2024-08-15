.class final Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranAospCloudEngineCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private cloudEngineCallback:Lcom/transsion/log/cloudengine/ICloudEngineCallback;

.field private tranCloudEngineCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$1;

    .line 70
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloudEngineCallback()Lcom/transsion/log/cloudengine/ICloudEngineCallback;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->cloudEngineCallback:Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    return-object v0
.end method

.method public getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->tranCloudEngineCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    return-object v0
.end method

.method public setCloudEngineCallback(Lcom/transsion/log/cloudengine/ICloudEngineCallback;)V
    .locals 0
    .param p1, "cloudEngineCallback"    # Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    .line 87
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->cloudEngineCallback:Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    .line 88
    return-void
.end method

.method public setTranCloudEngineCallback(Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 0
    .param p1, "tranCloudEngineCallback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 79
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->tranCloudEngineCallback:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 80
    return-void
.end method
