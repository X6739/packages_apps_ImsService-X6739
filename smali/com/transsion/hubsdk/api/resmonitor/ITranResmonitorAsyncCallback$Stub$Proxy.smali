.class Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITranResmonitorAsyncCallback.java"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    return-object v0
.end method

.method public onAsyncCallback(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 113
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onAsyncCallback(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    return-void

    .line 119
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw v1
.end method

.method public onBundleAsyncCallback(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 136
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onBundleAsyncCallback(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-void

    .line 142
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v1
.end method
