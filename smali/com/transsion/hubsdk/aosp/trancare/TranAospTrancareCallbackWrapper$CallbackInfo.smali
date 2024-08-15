.class final Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranAospTrancareCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mTranLogCallback:Lcom/transsion/log/TranLogCallback;

.field private mTranTrancareCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;

    .line 71
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranLogCallback()Lcom/transsion/log/TranLogCallback;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranLogCallback:Lcom/transsion/log/TranLogCallback;

    return-object v0
.end method

.method public getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranTrancareCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    return-object v0
.end method

.method public setTranLogCallback(Lcom/transsion/log/TranLogCallback;)V
    .locals 0
    .param p1, "tranLogCallback"    # Lcom/transsion/log/TranLogCallback;

    .line 88
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranLogCallback:Lcom/transsion/log/TranLogCallback;

    .line 89
    return-void
.end method

.method public setTranTrancareCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 0
    .param p1, "tranTrancareCallback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 80
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->mTranTrancareCallback:Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 81
    return-void
.end method
