.class public interface abstract Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
.super Ljava/lang/Object;
.source "ITranResmonitorAsyncCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;,
        Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAsyncCallback(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBundleAsyncCallback(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
