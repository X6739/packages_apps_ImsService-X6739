.class final Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranThubResmonitorAsyncCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

.field private mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$1;

    .line 90
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiCallback()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    return-object v0
.end method

.method public getCallback()Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;

    return-object v0
.end method

.method public setApiCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0
    .param p1, "apiCallback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 99
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 100
    return-void
.end method

.method public setCallback(Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;

    .line 107
    iput-object p1, p0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/resmonitor/ITranResmonitorAsyncCallback;

    .line 108
    return-void
.end method
