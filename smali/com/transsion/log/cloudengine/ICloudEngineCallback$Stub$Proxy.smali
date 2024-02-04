.class Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICloudEngineCallback.java"

# interfaces
.implements Lcom/transsion/log/cloudengine/ICloudEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/log/cloudengine/ICloudEngineCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "com.transsion.log.cloudengine.ICloudEngineCallback"

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

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.transsion.log.cloudengine.ICloudEngineCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 101
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;->getDefaultImpl()Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-static {}, Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;->getDefaultImpl()Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/transsion/log/cloudengine/ICloudEngineCallback;->onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    return-void

    .line 107
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    nop

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    throw v1
.end method
