.class public Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;
.super Lcom/transsion/hubsdk/app/ITranActivityController$Stub;
.source "TranThubActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranActivityControler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    .line 139
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranActivityController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 10
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    move-object v0, p0

    iget-object v1, v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, v0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    return v1

    .line 160
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 176
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityControler;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    invoke-static {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->access$000(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;)Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 183
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
