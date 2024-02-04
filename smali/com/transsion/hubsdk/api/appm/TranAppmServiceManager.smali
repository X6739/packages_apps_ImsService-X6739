.class public Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;
.super Ljava/lang/Object;
.source "TranAppmServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubAppmServiceManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/appm/TranAospAppmServiceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospAppmServiceManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void
.end method


# virtual methods
.method public getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "unkown"

    return-object v0

    .line 89
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    return-object v0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TranAppmService is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 2
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 56
    iget-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 60
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TranAppmService is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TranAppmService is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 2
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 71
    iget-object v0, p0, Lcom/transsion/hubsdk/api/appm/TranAppmServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;->unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TranAppmService is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
