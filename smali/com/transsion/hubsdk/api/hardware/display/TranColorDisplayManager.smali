.class public Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;
.super Ljava/lang/Object;
.source "TranColorDisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospStatusBarManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    return-object v0
.end method

.method public isNightDisplayActivated()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->isNightDisplayActivated()Z

    move-result v0

    return v0
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 1
    .param p1, "activated"    # Z

    .line 55
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setNightDisplayActivated(Z)Z

    move-result v0

    return v0
.end method
