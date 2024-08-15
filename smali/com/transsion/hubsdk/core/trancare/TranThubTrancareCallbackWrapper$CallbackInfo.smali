.class final Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranThubTrancareCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mApiCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

.field private mCallback:Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;

    .line 58
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-object v0
.end method

.method public getCallback()Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    return-object v0
.end method

.method public setApiCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 0
    .param p1, "apiCllback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 67
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mApiCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 68
    return-void
.end method

.method public setCallback(Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    .line 75
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->mCallback:Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    .line 76
    return-void
.end method
