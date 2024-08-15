.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;
.super Ljava/lang/Object;
.source "ITranActivityTaskManagerAdapter.java"


# virtual methods
.method public abstract getFocusedWinPkgName()Ljava/lang/String;
.end method

.method public abstract getRecentTasks(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopActivityComponent()Landroid/content/ComponentName;
.end method

.method public abstract inMultiWindowMode()Z
.end method

.method public abstract isIMEShowing()Z
.end method

.method public abstract removeRootTasksInWindowingModes([I)V
.end method

.method public abstract removeTask(I)Z
.end method

.method public abstract setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
.end method
