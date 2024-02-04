.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.super Ljava/lang/Object;
.source "TranThubInputManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;,
        Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

.field private static mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;


# instance fields
.field private mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "input"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    .line 44
    return-void
.end method

.method static synthetic access$000()Lcom/transsion/hubsdk/view/ITranInputMonitor;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    .line 34
    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    return-object v0
.end method


# virtual methods
.method public monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "touchEventHandler"    # Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    if-eqz v0, :cond_2

    .line 51
    :try_start_0
    iput-object p3, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mTouchEventHandler:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "tranTouchEventHandler":Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;
    if-eqz p3, :cond_0

    .line 54
    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V

    move-object v0, v1

    .line 56
    :cond_0
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    invoke-interface {v1, p1, p2, v0}, Lcom/transsion/hubsdk/hardware/input/ITranInputManager;->monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/view/ITranInputMonitor;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mInputMonitor:Lcom/transsion/hubsdk/view/ITranInputMonitor;

    .line 57
    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranInputMonitor;-><init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    .end local v0    # "tranTouchEventHandler":Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranTouchEventHandler;
    :cond_1
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitorGestureInput:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/input/ITranInputManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    .line 73
    sput-object p1, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->mService:Lcom/transsion/hubsdk/hardware/input/ITranInputManager;

    .line 74
    return-void
.end method
