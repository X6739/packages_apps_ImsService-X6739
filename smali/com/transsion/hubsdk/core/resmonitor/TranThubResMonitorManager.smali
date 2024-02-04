.class public Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;
.super Ljava/lang/Object;
.source "TranThubResMonitorManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method static synthetic lambda$getEvent$6(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->getEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getEventAsync$14(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {v0, p0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getEventAsyncStatic$13(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 143
    return-object v0
.end method

.method static synthetic lambda$getEventBundle$10(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "event"    # Landroid/os/Bundle;
    .param p1, "events"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getEventBundleAsync$16(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventBundleAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 171
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getEventBundleAsyncStatic$15(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResmonitorAsyncCallbackWrapper;->getEventBundleAsync(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    .line 161
    return-object v0
.end method

.method static synthetic lambda$getEventBundleStatic$9(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "event"    # Landroid/os/Bundle;
    .param p1, "events"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getEventStatic$5(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEventStatic(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const-string v0, "resmonitor"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    .line 25
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$regCallback$2(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)Ljava/lang/Object;
    .locals 7
    .param p0, "event"    # I
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p2, "cpuThreshold"    # I
    .param p3, "memoryThreshold"    # I
    .param p4, "storageThreshold"    # I
    .param p5, "IOWaitThreshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 46
    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->regCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$regCallbackStatic$1(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)Ljava/lang/Object;
    .locals 7
    .param p0, "event"    # I
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p2, "cpuThreshold"    # I
    .param p3, "memoryThreshold"    # I
    .param p4, "storageThreshold"    # I
    .param p5, "IOWaitThreshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->regCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    .line 36
    return-object v0
.end method

.method static synthetic lambda$setEvent$8(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->setEvent(ILjava/lang/String;)V

    .line 101
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setEventBundle$12(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "event"    # Landroid/os/Bundle;
    .param p1, "events"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;->setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setEventBundleStatic$11(Landroid/os/Bundle;[Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "event"    # Landroid/os/Bundle;
    .param p1, "events"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$setEventStatic$7(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # I
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->setEventStatic(ILjava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$unregCallback$4(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->unregCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    .line 67
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$unregCallbackStatic$3(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorCallbackWrapper;->unregCallback(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public getEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 149
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 141
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 3
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 113
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda16;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method public getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 3
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 167
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 3
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 159
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda11;-><init>(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 3
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 107
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method public getEventStatic(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda12;-><init>(ILjava/lang/String;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p3, "cpuThreshold"    # I
    .param p4, "memoryThreshold"    # I
    .param p5, "storageThreshold"    # I
    .param p6, "IOWaitThreshold"    # I

    .line 44
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v8, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda6;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda6;-><init>(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    const-string v1, "resmonitor"

    invoke-virtual {v0, v8, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p3, "cpuThreshold"    # I
    .param p4, "memoryThreshold"    # I
    .param p5, "storageThreshold"    # I
    .param p6, "IOWaitThreshold"    # I

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v8, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda4;-><init>(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V

    const-string v1, "resmonitor"

    invoke-virtual {v0, v8, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 131
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda10;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 123
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;[Landroid/os/Bundle;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setEventStatic(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    .line 182
    sput-object p1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;->mService:Lcom/transsion/hubsdk/resmonitor/ITranResMonitorManager;

    .line 183
    return-void
.end method

.method public unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 63
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 55
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V

    const-string v2, "resmonitor"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    return-void
.end method
