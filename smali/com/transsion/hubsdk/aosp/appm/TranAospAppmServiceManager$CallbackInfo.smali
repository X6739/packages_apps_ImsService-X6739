.class final Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;
.super Ljava/lang/Object;
.source "TranAospAppmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field private mTranAppmCallback:Lcom/transsion/appm/ITranAppmCallback;

.field private mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$1;

    .line 148
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranAppmCallback()Lcom/transsion/appm/ITranAppmCallback;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallback:Lcom/transsion/appm/ITranAppmCallback;

    return-object v0
.end method

.method public getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    return-object v0
.end method

.method public setTranAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
    .locals 0
    .param p1, "tranAppmCallback"    # Lcom/transsion/appm/ITranAppmCallback;

    .line 165
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallback:Lcom/transsion/appm/ITranAppmCallback;

    .line 166
    return-void
.end method

.method public setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 0
    .param p1, "tranAppmCallbackWapper"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 157
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager$CallbackInfo;->mTranAppmCallbackWapper:Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 158
    return-void
.end method
