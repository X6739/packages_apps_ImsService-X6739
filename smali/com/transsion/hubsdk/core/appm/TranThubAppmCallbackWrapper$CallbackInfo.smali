.class final Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
.super Ljava/lang/Object;
.source "TranThubAppmCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mTranAppmCallback:Lcom/transsion/hubsdk/appm/ITranAppmCallback;

.field private mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$1;

    .line 65
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranAppmCallback()Lcom/transsion/hubsdk/appm/ITranAppmCallback;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallback:Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    return-object v0
.end method

.method public getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-object v0
.end method

.method public setTranAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V
    .locals 0
    .param p1, "tranAppmCallback"    # Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    .line 82
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallback:Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    .line 83
    return-void
.end method

.method public setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 0
    .param p1, "tranAppmCallbackWapper"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 74
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 75
    return-void
.end method
