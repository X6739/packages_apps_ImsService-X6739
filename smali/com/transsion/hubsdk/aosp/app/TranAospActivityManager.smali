.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;
.super Ljava/lang/Object;
.source "TranAospActivityManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sActivityManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethodGetService:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sClassName:Ljava/lang/Class;

    .line 31
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 37
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public forceStopPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "forceStopPackage"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    .local v0, "forceStopPackageMethod":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v1

    invoke-static {v2, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 61
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x0

    aput-object v5, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 63
    .local v3, "object":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    nop

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "object":Landroid/app/ActivityManager;
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopPackage fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUser()I
    .locals 7

    .line 116
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getCurrentUser"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    .local v0, "getCurrentUserMethod":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    const-class v5, Landroid/os/Handler;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 120
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 121
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 122
    .local v3, "object":Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 123
    .local v4, "user":I
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 124
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 125
    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v1

    .line 127
    :cond_0
    return v4

    .line 128
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "object":Landroid/app/ActivityManager;
    .end local v4    # "user":I
    .end local v5    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 129
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentUser fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v2    # "t":Ljava/lang/Throwable;
    return v1
.end method

.method public getTopActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 7

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 95
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 97
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v3, v4

    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "topActivityInfo"

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 100
    .local v4, "topActivityInfo":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "object":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 103
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    instance-of v6, v1, Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    .line 104
    move-object v6, v1

    check-cast v6, Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    .line 106
    :cond_0
    return-object v5

    .line 110
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "topActivityInfo":Ljava/lang/reflect/Field;
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivityInfo fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public inMultiWindowMode(I)Z
    .locals 1
    .param p1, "windowingMode"    # I

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 7

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isInLockTaskMode"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 75
    .local v0, "isInLockTaskModeMethod":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    const-class v5, Landroid/os/Handler;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 76
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 77
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 78
    .local v3, "object":Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 79
    .local v4, "mode":Z
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 80
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 81
    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v1

    .line 83
    :cond_0
    return v4

    .line 84
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "object":Landroid/app/ActivityManager;
    .end local v4    # "mode":Z
    .end local v5    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 85
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInLockTaskMode fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "t":Ljava/lang/Throwable;
    return v1
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # J
    .param p4, "pid"    # I
    .param p5, "externinfo"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sClassName:Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "startTNE"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, "startTNEMethod":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->sActivityManagerClass:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    const-string v8, "getService"

    invoke-static {v2, v8, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 46
    .local v2, "getServiceMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    const/4 v3, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 48
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    aput-object p5, v1, v7

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    nop

    .end local v3    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTNE fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
