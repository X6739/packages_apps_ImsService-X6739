.class final Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranThubResMonitorCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

.field private mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$1;

    .line 81
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-object v0
.end method

.method public getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    return-object v0
.end method

.method public setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 0
    .param p1, "apiCallback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 90
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 91
    return-void
.end method

.method public setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    .line 98
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorCallback;

    .line 99
    return-void
.end method
