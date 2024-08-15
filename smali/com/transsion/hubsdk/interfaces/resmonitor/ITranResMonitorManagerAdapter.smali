.class public interface abstract Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
.super Ljava/lang/Object;
.source "ITranResMonitorManagerAdapter.java"


# virtual methods
.method public abstract getEvent(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
.end method

.method public abstract getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
.end method

.method public abstract getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
.end method

.method public abstract getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
.end method

.method public abstract getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
.end method

.method public abstract getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
.end method

.method public abstract getEventStatic(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
.end method

.method public abstract regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
.end method

.method public abstract setEvent(ILjava/lang/String;)V
.end method

.method public abstract setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
.end method

.method public abstract setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
.end method

.method public abstract setEventStatic(ILjava/lang/String;)V
.end method

.method public abstract unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
.end method

.method public abstract unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
.end method
