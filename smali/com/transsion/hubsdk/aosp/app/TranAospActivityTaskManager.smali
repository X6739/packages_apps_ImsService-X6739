.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;
.super Ljava/lang/Object;
.source "TranAospActivityTaskManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final WINDOWING_MODE_PINNED:I = 0x2

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private mMethodGetService:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "android.app.ActivityTaskManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 32
    return-void
.end method


# virtual methods
.method public getFocusedWinPkgName()Ljava/lang/String;
    .locals 7

    .line 112
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getService"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "object":Ljava/lang/Object;
    const-string v3, "android.app.IActivityTaskManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 118
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getFocusedWinPkgName"

    new-array v5, v2, [Ljava/lang/Class;

    .line 119
    invoke-static {v3, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 120
    .local v4, "getFocusedWinPkgNameMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    .local v2, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 122
    .local v5, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 123
    move-object v6, v2

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    .line 125
    :cond_1
    return-object v5

    .line 126
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getFocusedWinPkgNameMethod":Ljava/lang/reflect/Method;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFocusedWinPkgName fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 10
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

    .line 36
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 37
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getService"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "object":Ljava/lang/Object;
    const-string v3, "android.app.IActivityTaskManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 42
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getRecentTasks"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    .line 43
    invoke-static {v3, v4, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 44
    .local v4, "getRecentTaskMethod":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 45
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 46
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v7, "android.content.pm.ParceledListSlice"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 47
    .local v7, "parcelListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getList"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 48
    .local v8, "getListMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 49
    .local v9, "objList":Ljava/lang/Object;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .end local v9    # "objList":Ljava/lang/Object;
    .local v2, "objList":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v9, v2, Ljava/util/List;

    if-eqz v9, :cond_1

    .line 51
    move-object v9, v2

    check-cast v9, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v9

    .line 53
    :cond_1
    return-object v6

    .line 54
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "objList":Ljava/lang/Object;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getRecentTaskMethod":Ljava/lang/reflect/Method;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v7    # "parcelListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "getListMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 55
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentTasks fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .locals 7

    .line 64
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 65
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v3, "getService"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "object":Ljava/lang/Object;
    const-string v3, "android.app.IActivityTaskManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 71
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getTopActivityComponent"

    new-array v5, v2, [Ljava/lang/Class;

    .line 72
    invoke-static {v3, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 73
    .local v4, "getTopActivityComponentMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 75
    .local v5, "name":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    instance-of v6, v2, Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    .line 76
    move-object v6, v2

    check-cast v6, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    .line 78
    :cond_1
    return-object v5

    .line 79
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getTopActivityComponentMethod":Ljava/lang/reflect/Method;
    .end local v5    # "name":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    .line 80
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopActivityComponent fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method public inMultiWindowMode()Z
    .locals 7

    .line 158
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 159
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getService"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, "object":Ljava/lang/Object;
    const-string v2, "android.app.IActivityTaskManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 164
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "inMultiWindowMode"

    new-array v4, v0, [Ljava/lang/Class;

    .line 165
    invoke-static {v2, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 166
    .local v3, "inMultiWindowModeMethod":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 168
    .local v5, "mode":Z
    if-eqz v4, :cond_1

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 169
    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    .line 171
    :cond_1
    return v5

    .line 172
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "inMultiWindowModeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "mode":Z
    :catchall_0
    move-exception v1

    .line 173
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inMultiWindowMode fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public isIMEShowing()Z
    .locals 7

    .line 135
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getService"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "object":Ljava/lang/Object;
    const-string v2, "android.app.IActivityTaskManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 141
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "isIMEShowing"

    new-array v4, v0, [Ljava/lang/Class;

    .line 142
    invoke-static {v2, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 143
    .local v3, "isIMEShowingMethod":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 144
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 145
    .local v5, "mode":Z
    if-eqz v4, :cond_1

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 146
    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    .line 148
    :cond_1
    return v5

    .line 149
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "isIMEShowingMethod":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "mode":Z
    :catchall_0
    move-exception v1

    .line 150
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMEShowing fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public removeRootTasksInWindowingModes([I)V
    .locals 7
    .param p1, "windowingModes"    # [I

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getService"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "object":Ljava/lang/Object;
    const-string v2, "android.app.IActivityTaskManager"

    invoke-static {v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 194
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "removeRootTasksInWindowingModes"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [I

    aput-object v6, v5, v1

    .line 195
    invoke-static {v2, v3, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 196
    .local v3, "removeRootTasksInWindowingModes":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [I

    const/4 v6, 0x2

    aput v6, v4, v1

    aput-object v4, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    nop

    .end local v0    # "object":Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "removeRootTasksInWindowingModes":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRootTasksInWindowingModes fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public removeTask(I)Z
    .locals 7
    .param p1, "taskId"    # I

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 90
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getService"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->mMethodGetService:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    .local v1, "object":Ljava/lang/Object;
    const-string v2, "android.app.IActivityTaskManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 95
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "removeTask"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    .line 96
    invoke-static {v2, v3, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 97
    .local v3, "removeTaskMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 99
    .local v5, "remove":Z
    if-eqz v4, :cond_1

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 100
    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    .line 102
    :cond_1
    return v5

    .line 103
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "removeTaskMethod":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "remove":Z
    :catchall_0
    move-exception v1

    .line 104
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospActivityTaskManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTask fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
    .locals 0
    .param p1, "controller"    # Lcom/transsion/hubsdk/api/app/ITranActivityController;
    .param p2, "imAMonkey"    # Z

    .line 181
    return-void
.end method
