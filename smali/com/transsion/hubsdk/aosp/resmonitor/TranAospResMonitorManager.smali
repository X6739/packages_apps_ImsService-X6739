.class public Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;
.super Ljava/lang/Object;
.source "TranAospResMonitorManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 79
    return-void
.end method

.method public getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 74
    return-void
.end method

.method public getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method public getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 89
    return-void
.end method

.method public getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .locals 0
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    .line 84
    return-void
.end method

.method public getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method public getEventStatic(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p3, "cpuThreshold"    # I
    .param p4, "memoryThreshold"    # I
    .param p5, "storageThreshold"    # I
    .param p6, "IOWaitThreshold"    # I

    .line 19
    return-void
.end method

.method public regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .param p3, "cpuThreshold"    # I
    .param p4, "memoryThreshold"    # I
    .param p5, "storageThreshold"    # I
    .param p6, "IOWaitThreshold"    # I

    .line 14
    return-void
.end method

.method public setEvent(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 69
    return-void
.end method

.method public setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Landroid/os/Bundle;
    .param p2, "events"    # [Landroid/os/Bundle;

    .line 64
    return-void
.end method

.method public setEventStatic(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;

    .line 44
    return-void
.end method

.method public unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 29
    return-void
.end method

.method public unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 24
    return-void
.end method
