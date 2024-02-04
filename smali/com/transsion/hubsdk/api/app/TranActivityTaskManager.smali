.class public Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;
.super Ljava/lang/Object;
.source "TranActivityTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubActivityTaskManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospActivityTaskManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public getFocusedWinPkgName()Ljava/lang/String;
    .locals 2

    .line 104
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran getFocusedWinPkgName"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getFocusedWinPkgName()Ljava/lang/String;

    move-result-object v0

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

    .line 65
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    return-object v0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .locals 2

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran getTopActivityComponent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public inMultiWindowMode()Z
    .locals 2

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran inMultiWindowMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->inMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isIMEShowing()Z
    .locals 2

    .line 117
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran isIMEShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->isIMEShowing()Z

    move-result v0

    return v0
.end method

.method public removeRootTasksInWindowingModes([I)V
    .locals 1
    .param p1, "windowingModes"    # [I

    .line 168
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeRootTasksInWindowingModes([I)V

    .line 169
    return-void
.end method

.method public removeTask(I)Z
    .locals 2
    .param p1, "taskId"    # I

    .line 91
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "tran removeTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->removeTask(I)Z

    move-result v0

    return v0
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .locals 1
    .param p1, "controller"    # Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .param p2, "imAMonkey"    # Z

    .line 147
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;->setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V

    .line 148
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    .line 50
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;

    .line 51
    return-void
.end method
