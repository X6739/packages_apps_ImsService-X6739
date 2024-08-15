.class public interface abstract Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
.super Ljava/lang/Object;
.source "ITranResMonitorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;,
        Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
