.class public Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.super Ljava/lang/Object;
.source "TranThubActivityTaskManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;


# instance fields
.field private mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    .line 36
    const-string v0, "activity_task"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .locals 1
    .param p0, "x0"    # Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    .line 30
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    return-object v0
.end method

.method static synthetic lambda$removeRootTasksInWindowingModes$0([I)Ljava/lang/Object;
    .locals 1
    .param p0, "windowingModes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeRootTasksInWindowingModes([I)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFocusedWinPkgName()Ljava/lang/String;
    .locals 1

    .line 74
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 43
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .locals 1

    .line 54
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public inMultiWindowMode()Z
    .locals 1

    .line 94
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->inMultiWindowMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isIMEShowing()Z
    .locals 1

    .line 84
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v0}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->isIMEShowing()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public removeRootTasksInWindowingModes([I)V
    .locals 3
    .param p1, "windowingModes"    # [I

    .line 129
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$$ExternalSyntheticLambda0;-><init>([I)V

    const-string v2, "activity_task"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "removeRootTasksInWindowingModes!"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public removeTask(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 64
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->removeTask(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .locals 2
    .param p1, "controller"    # Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .param p2, "imAMonkey"    # Z

    .line 104
    :try_start_0
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mController:Lcom/transsion/hubsdk/api/app/ITranActivityController;

    .line 105
    if-nez p1, :cond_0

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V

    .line 109
    .local v0, "tranController":Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    invoke-interface {v1, v0, p2}, Lcom/transsion/hubsdk/app/ITranActivityTaskManager;->setActivityController(Lcom/transsion/hubsdk/app/ITranActivityController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "tranController":Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;
    :goto_0
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/app/ITranActivityTaskManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    .line 123
    sput-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityTaskManager;

    .line 124
    return-void
.end method
