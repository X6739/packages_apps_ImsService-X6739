.class public Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Default;
.super Ljava/lang/Object;
.source "ITranResmonitorAsyncCallback.java"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAsyncCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onBundleAsyncCallback(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
