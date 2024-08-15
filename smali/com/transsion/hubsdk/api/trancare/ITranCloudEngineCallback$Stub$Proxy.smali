.class Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITranCloudEngineCallback.java"

# interfaces
.implements Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "com.transsion.hubsdk.api.trancare.ITranCloudEngineCallback"

    return-object v0
.end method

.method public onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fileSate"    # Z
    .param p3, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.transsion.hubsdk.api.trancare.ITranCloudEngineCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 98
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 99
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;->onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    return-void

    .line 104
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    nop

    .line 106
    return-void

    .line 104
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw v1
.end method
