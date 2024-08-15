.class public Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;
.super Ljava/lang/Object;
.source "TranInputManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->TAG:Ljava/lang/String;

    const-string v1, "TranInputManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    return-object v0
.end method

.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "touchEventHandler"    # Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    .line 58
    iget-object v0, p0, Lcom/transsion/hubsdk/api/hardware/input/TranInputManager;->mService:Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;->monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
